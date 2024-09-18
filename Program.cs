using IASQL;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddSqlServer<IASQLcontext>("Data Source=ALFA; Initial Catalog=IASQLef;user id=admin_test;password=admin_test;TrustServerCertificate=True");

//builder.Services.AddDbContext<IASQLcontext>(p => p.UseInMemoryDatabase("IASQLef"));

var app = builder.Build();

app.MapGet("/", () => "Hello World!");

app.MapGet("/dbconexion", async ([FromServices] IASQLcontext dbContext) =>
    {
        dbContext.Database.EnsureCreated();
        return Results.Ok("Base de datos en memoria: " + dbContext.Database.IsInMemory());
    });

app.Run();
