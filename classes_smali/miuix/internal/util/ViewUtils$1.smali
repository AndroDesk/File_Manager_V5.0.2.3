.class Lmiuix/internal/util/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/util/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;

.field public final synthetic val$paddingBottomSystemWindowInsets:Z

.field public final synthetic val$paddingLeftSystemWindowInsets:Z

.field public final synthetic val$paddingRightSystemWindowInsets:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZZZLmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V
    .registers 5

    iput-boolean p1, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingBottomSystemWindowInsets:Z

    iput-boolean p2, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingLeftSystemWindowInsets:Z

    iput-boolean p3, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingRightSystemWindowInsets:Z

    iput-object p4, p0, Lmiuix/internal/util/ViewUtils$1;->val$listener:Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lm0/r0;Lmiuix/internal/util/ViewUtils$RelativePadding;)Lm0/r0;
    .registers 7

    iget-boolean v0, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingBottomSystemWindowInsets:Z

    if-eqz v0, :cond_d

    iget v0, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    invoke-virtual {p2}, Lm0/r0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    :cond_d
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iget-boolean v1, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingLeftSystemWindowInsets:Z

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_21

    iget v1, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    invoke-virtual {p2}, Lm0/r0;->c()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    goto :goto_2a

    :cond_21
    iget v1, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    invoke-virtual {p2}, Lm0/r0;->c()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    :cond_2a
    :goto_2a
    iget-boolean v1, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingRightSystemWindowInsets:Z

    if-eqz v1, :cond_43

    if-eqz v0, :cond_3a

    iget v0, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    invoke-virtual {p2}, Lm0/r0;->d()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    goto :goto_43

    :cond_3a
    iget v0, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    invoke-virtual {p2}, Lm0/r0;->d()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    :cond_43
    :goto_43
    invoke-virtual {p3, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/internal/util/ViewUtils$1;->val$listener:Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_4e

    invoke-interface {v0, p1, p2, p3}, Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Lm0/r0;Lmiuix/internal/util/ViewUtils$RelativePadding;)Lm0/r0;

    move-result-object p2

    :cond_4e
    return-object p2
.end method
