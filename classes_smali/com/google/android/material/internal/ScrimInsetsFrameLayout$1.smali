.class Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;
.super Ljava/lang/Object;
.source "ScrimInsetsFrameLayout.java"

# interfaces
.implements Lm0/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/ScrimInsetsFrameLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lm0/r0;)Lm0/r0;
    .registers 7

    .line 1
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 3
    iget-object v0, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    .line 5
    if-nez v0, :cond_d

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iput-object v0, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    .line 14
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 16
    iget-object p1, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {p2}, Lm0/r0;->c()I

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p2}, Lm0/r0;->e()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {p2}, Lm0/r0;->d()I

    .line 29
    move-result v2

    .line 30
    invoke-virtual {p2}, Lm0/r0;->b()I

    .line 33
    move-result v3

    .line 34
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onInsetsChanged(Lm0/r0;)V

    .line 42
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 44
    iget-object v0, p2, Lm0/r0;->a:Lm0/r0$k;

    .line 46
    invoke-virtual {v0}, Lm0/r0$k;->j()Lf0/f;

    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lf0/f;->e:Lf0/f;

    .line 52
    invoke-virtual {v0, v1}, Lf0/f;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x1

    .line 57
    xor-int/2addr v0, v1

    .line 58
    if-eqz v0, :cond_43

    .line 60
    iget-object v0, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 62
    iget-object v0, v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    .line 64
    if-nez v0, :cond_42

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    const/4 v1, 0x0

    .line 68
    :cond_43
    :goto_43
    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 71
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 73
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 75
    invoke-static {p1}, Lm0/g0$d;->k(Landroid/view/View;)V

    .line 78
    iget-object p1, p2, Lm0/r0;->a:Lm0/r0$k;

    .line 80
    invoke-virtual {p1}, Lm0/r0$k;->c()Lm0/r0;

    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method
