.class public Lcom/google/android/material/internal/ViewUtils$RelativePadding;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativePadding"
.end annotation


# instance fields
.field public bottom:I

.field public end:I

.field public start:I

.field public top:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 3
    iput p2, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 4
    iput p3, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 5
    iput p4, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/ViewUtils$RelativePadding;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 8
    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 9
    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 10
    iget p1, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    iput p1, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 3
    iget v1, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    .line 5
    iget v2, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 7
    iget v3, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 9
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {p1, v0, v1, v2, v3}, Lm0/g0$e;->k(Landroid/view/View;IIII)V

    .line 14
    return-void
.end method
