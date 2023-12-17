.class public final Landroidx/appcompat/app/z;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/z$a;
    }
.end annotation


# static fields
.field public static d:Landroidx/appcompat/app/z;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/location/LocationManager;

.field public final c:Landroidx/appcompat/app/z$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/appcompat/app/z$a;

    .line 6
    invoke-direct {v0}, Landroidx/appcompat/app/z$a;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/appcompat/app/z;->c:Landroidx/appcompat/app/z$a;

    .line 11
    iput-object p1, p0, Landroidx/appcompat/app/z;->a:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Landroidx/appcompat/app/z;->b:Landroid/location/LocationManager;

    .line 15
    return-void
.end method
