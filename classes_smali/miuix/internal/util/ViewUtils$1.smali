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
.method public constructor <init>(ZZZLmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V
    .registers 5

    .line 1
    iput-boolean p1, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingBottomSystemWindowInsets:Z

    .line 3
    iput-boolean p2, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingLeftSystemWindowInsets:Z

    .line 5
    iput-boolean p3, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingRightSystemWindowInsets:Z

    .line 7
    iput-object p4, p0, Lmiuix/internal/util/ViewUtils$1;->val$listener:Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lm0/r0;Lmiuix/internal/util/ViewUtils$RelativePadding;)Lm0/r0;
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingBottomSystemWindowInsets:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget v0, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    .line 7
    invoke-virtual {p2}, Lm0/r0;->b()I

    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    iput v1, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    .line 14
    :cond_d
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 17
    move-result v0

    .line 18
    iget-boolean v1, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingLeftSystemWindowInsets:Z

    .line 20
    if-eqz v1, :cond_2a

    .line 22
    if-eqz v0, :cond_21

    .line 24
    iget v1, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 26
    invoke-virtual {p2}, Lm0/r0;->c()I

    .line 29
    move-result v2

    .line 30
    add-int/2addr v2, v1

    .line 31
    iput v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 33
    goto :goto_2a

    .line 34
    :cond_21
    iget v1, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 36
    invoke-virtual {p2}, Lm0/r0;->c()I

    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, v1

    .line 41
    iput v2, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 43
    :cond_2a
    :goto_2a
    iget-boolean v1, p0, Lmiuix/internal/util/ViewUtils$1;->val$paddingRightSystemWindowInsets:Z

    .line 45
    if-eqz v1, :cond_43

    .line 47
    if-eqz v0, :cond_3a

    .line 49
    iget v0, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 51
    invoke-virtual {p2}, Lm0/r0;->d()I

    .line 54
    move-result v1

    .line 55
    add-int/2addr v1, v0

    .line 56
    iput v1, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 58
    goto :goto_43

    .line 59
    :cond_3a
    iget v0, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 61
    invoke-virtual {p2}, Lm0/r0;->d()I

    .line 64
    move-result v1

    .line 65
    add-int/2addr v1, v0

    .line 66
    iput v1, p3, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 68
    :cond_43
    :goto_43
    invoke-virtual {p3, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lmiuix/internal/util/ViewUtils$1;->val$listener:Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;

    .line 73
    if-eqz v0, :cond_4e

    .line 75
    invoke-interface {v0, p1, p2, p3}, Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Lm0/r0;Lmiuix/internal/util/ViewUtils$RelativePadding;)Lm0/r0;

    .line 78
    move-result-object p2

    .line 79
    :cond_4e
    return-object p2
.end method
