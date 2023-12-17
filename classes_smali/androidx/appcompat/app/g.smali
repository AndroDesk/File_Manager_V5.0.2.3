.class public final Landroidx/appcompat/app/g;
.super Ljava/lang/Object;
.source "AppCompatActivity.java"

# interfaces
.implements Lc1/c$b;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    return-object v0
.end method
