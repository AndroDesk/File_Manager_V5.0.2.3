.class public final Landroidx/appcompat/app/h;
.super Ljava/lang/Object;
.source "AppCompatActivity.java"

# interfaces
.implements Lf/c;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/k;->j()V

    .line 10
    iget-object v0, p0, Landroidx/appcompat/app/h;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lc1/c;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "androidx:appcompat"

    .line 18
    invoke-virtual {v0, v1}, Lc1/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 21
    invoke-virtual {p1}, Landroidx/appcompat/app/k;->n()V

    .line 24
    return-void
.end method
