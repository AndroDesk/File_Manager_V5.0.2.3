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

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_14

    .line 7
    sput-object v0, Lf1/m;->a:[I

    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [I

    .line 12
    const/4 v1, 0x0

    .line 13
    const v2, 0x101047c

    .line 16
    aput v2, v0, v1

    .line 18
    sput-object v0, Lf1/m;->b:[I

    .line 20
    return-void

    .line 21
    :array_14
    .array-data 4
        0x1010141
        0x1010198
        0x10103e2
        0x101044f
    .end array-data
.end method
