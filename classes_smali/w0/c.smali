.class public final Lw0/c;
.super Ljava/lang/Object;


# static fields
.field public static final Fragment:[I

.field public static final FragmentContainerView:[I

.field public static final FragmentContainerView_android_name:I = 0x0

.field public static final FragmentContainerView_android_tag:I = 0x1

.field public static final Fragment_android_id:I = 0x1

.field public static final Fragment_android_name:I = 0x0

.field public static final Fragment_android_tag:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lw0/c;->Fragment:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lw0/c;->FragmentContainerView:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x1010003
        0x10100d0
        0x10100d1
    .end array-data

    :array_1c
    .array-data 4
        0x1010003
        0x10100d1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
