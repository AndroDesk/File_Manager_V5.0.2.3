.class public final Lm0/r0$j;
.super Lm0/r0$i;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static final q:Lm0/r0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    move-result-object v0

    sput-object v0, Lm0/r0$j;->q:Lm0/r0;

    return-void
.end method

.method public constructor <init>(Lm0/r0;Landroid/view/WindowInsets;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lm0/r0$i;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public f(I)Lf0/f;
    .registers 3

    iget-object v0, p0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Lm0/r0$l;->a(I)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/content/a;->b(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lf0/f;->b(Landroid/graphics/Insets;)Lf0/f;

    move-result-object p1

    return-object p1
.end method
