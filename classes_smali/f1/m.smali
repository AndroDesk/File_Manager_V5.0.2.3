.class public final Lf1/m;
.super Ljava/lang/Object;
.source "Styleable.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lf1/m;->a:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101047c

    aput v2, v0, v1

    sput-object v0, Lf1/m;->b:[I

    return-void

    :array_14
    .array-data 4
        0x1010141
        0x1010198
        0x10103e2
        0x101044f
    .end array-data
.end method
