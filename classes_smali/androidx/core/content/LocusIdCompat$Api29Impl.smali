.class Landroidx/core/content/LocusIdCompat$Api29Impl;
.super Ljava/lang/Object;
.source "LocusIdCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/LocusIdCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Landroid/content/LocusId;
    .registers 2

    .line 1
    new-instance v0, Landroid/content/LocusId;

    .line 3
    invoke-direct {v0, p0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    .line 6
    return-object v0
.end method

.method public static getId(Landroid/content/LocusId;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
