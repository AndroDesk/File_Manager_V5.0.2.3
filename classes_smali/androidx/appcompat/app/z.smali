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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/app/z$a;

    invoke-direct {v0}, Landroidx/appcompat/app/z$a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/z;->c:Landroidx/appcompat/app/z$a;

    iput-object p1, p0, Landroidx/appcompat/app/z;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/app/z;->b:Landroid/location/LocationManager;

    return-void
.end method
