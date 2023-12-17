.class final Landroidx/core/content/res/TypedArrayApi26ImplKt;
.super Ljava/lang/Object;
.source "TypedArray.kt"


# static fields
.field public static final INSTANCE:Landroidx/core/content/res/TypedArrayApi26ImplKt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/content/res/TypedArrayApi26ImplKt;

    invoke-direct {v0}, Landroidx/core/content/res/TypedArrayApi26ImplKt;-><init>()V

    sput-object v0, Landroidx/core/content/res/TypedArrayApi26ImplKt;->INSTANCE:Landroidx/core/content/res/TypedArrayApi26ImplKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFont(Landroid/content/res/TypedArray;I)Landroid/graphics/Typeface;
    .registers 3
    .param p0  # Landroid/content/res/TypedArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "typedArray"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Landroidx/appcompat/widget/x;->h(Landroid/content/res/TypedArray;I)Landroid/graphics/Typeface;

    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Li3/g;->b(Ljava/lang/Object;)V

    .line 13
    return-object p0
.end method
