.class public final Lmiuix/miuixbasewidget/R$array;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static final alphabet_sub_table_with_starred:I

.field public static final alphabet_table:I

.field public static final alphabet_table_with_starred:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0a2d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/miuixbasewidget/R$array;->alphabet_sub_table_with_starred:I

    const v0, 0x7f0a2d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/miuixbasewidget/R$array;->alphabet_table:I

    const v0, 0x7f0a2d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/miuixbasewidget/R$array;->alphabet_table_with_starred:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
