.class public Lcom/android/fileexplorer/controller/FileCategoryHelper$CategoryItem;
.super Ljava/lang/Object;
.source "FileCategoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/controller/FileCategoryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryItem"
.end annotation


# static fields
.field public static final TYPE_DOCUMENT:I

.field public static final TYPE_MEDIA:I

.field public static final TYPE_OTHER:I


# instance fields
.field public count:J

.field public size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f182dec

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$CategoryItem;->TYPE_DOCUMENT:I

    const v0, 0x7f182ded

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$CategoryItem;->TYPE_MEDIA:I

    const v0, 0x7f182dea

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$CategoryItem;->TYPE_OTHER:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
