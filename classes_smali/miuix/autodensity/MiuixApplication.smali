.class public Lmiuix/autodensity/MiuixApplication;
.super Lmiuix/app/Application;
.source "MiuixApplication.java"

# interfaces
.implements Lmiuix/autodensity/IDensity;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/app/Application;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .line 1
    invoke-super {p0}, Lmiuix/app/Application;->onCreate()V

    .line 4
    invoke-static {p0}, Lmiuix/autodensity/AutoDensityConfig;->init(Landroid/app/Application;)Lmiuix/autodensity/AutoDensityConfig;

    .line 7
    return-void
.end method

.method public shouldAdaptAutoDensity()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
