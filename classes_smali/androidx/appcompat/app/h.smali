.class public final Landroidx/appcompat/app/h;
.super Ljava/lang/Object;
.source "AppCompatActivity.java"

# interfaces
.implements Lf/c;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    iget-object p1, p0, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/k;->j()V

    iget-object v0, p0, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lc1/c;

    move-result-object v0

    const-string v1, "androidx:appcompat"

    invoke-virtual {v0, v1}, Lc1/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/appcompat/app/k;->n()V

    return-void
.end method
