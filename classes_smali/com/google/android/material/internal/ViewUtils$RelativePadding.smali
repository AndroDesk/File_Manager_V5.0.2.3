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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iput p2, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    iput p3, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    iput p4, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/ViewUtils$RelativePadding;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    iget v0, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    iput v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    iget p1, p1, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    iput p1, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .registers 7

    iget v0, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    iget v1, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->top:I

    iget v2, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    iget v3, p0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, v0, v1, v2, v3}, Lm0/g0$e;->k(Landroid/view/View;IIII)V

    return-void
.end method
