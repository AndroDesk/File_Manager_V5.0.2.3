.class Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchViewAnimationProcessor"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_6

    .line 5
    :cond_4
    const/high16 v0, 0x3f800000  # 1.0f

    .line 7
    :goto_6
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->updateCancelView(FI)V

    .line 16
    if-eqz p1, :cond_2a

    .line 18
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 20
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 31
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 33
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;

    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 42
    goto :goto_42

    .line 43
    :cond_2a
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 45
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;

    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 56
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 67
    :goto_42
    return-void
.end method

.method public onStop(Z)V
    .registers 7

    .line 1
    if-nez p1, :cond_e

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 5
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;

    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    goto :goto_4f

    .line 15
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 17
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 20
    move-result p1

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 29
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 32
    move-result v2

    .line 33
    add-int/2addr v2, p1

    .line 34
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    .line 39
    move-result v3

    .line 40
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 42
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    move-result v4

    .line 46
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 57
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, p1

    .line 62
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    const/high16 p1, 0x3f800000  # 1.0f

    .line 66
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 68
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 71
    move-result v1

    .line 72
    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->updateCancelView(FI)V

    .line 75
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    :goto_4f
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 8

    .line 1
    if-nez p1, :cond_6

    .line 3
    const/high16 p1, 0x3f800000  # 1.0f

    .line 5
    sub-float p2, p1, p2

    .line 7
    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 9
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 21
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 24
    move-result v2

    .line 25
    int-to-float v2, v2

    .line 26
    int-to-float p1, p1

    .line 27
    mul-float/2addr p1, p2

    .line 28
    add-float/2addr v2, p1

    .line 29
    float-to-int v2, v2

    .line 30
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    .line 35
    move-result v3

    .line 36
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 38
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 41
    move-result v4

    .line 42
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 45
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 53
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 56
    move-result v1

    .line 57
    float-to-int p1, p1

    .line 58
    add-int/2addr v1, p1

    .line 59
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 63
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    .line 66
    move-result p1

    .line 67
    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->updateCancelView(FI)V

    .line 70
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method public updateCancelView(FI)V
    .registers 7

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    sub-float v1, v0, p1

    .line 5
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 7
    invoke-static {v2}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_e

    .line 13
    sub-float v1, p1, v0

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 17
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/TextView;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    move-result v0

    .line 25
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 27
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/TextView;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v2

    .line 35
    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    if-eqz v2, :cond_3c

    .line 39
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 41
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/TextView;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 51
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 54
    move-result v3

    .line 55
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 58
    move-result v2

    .line 59
    add-int/2addr v2, v3

    .line 60
    add-int/2addr v0, v2

    .line 61
    :cond_3c
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 63
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/TextView;

    .line 66
    move-result-object v2

    .line 67
    int-to-float v3, v0

    .line 68
    mul-float/2addr v3, v1

    .line 69
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 72
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 74
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/ViewGroup;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    move-result-object v1

    .line 82
    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    if-eqz v1, :cond_7d

    .line 86
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 88
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/ViewGroup;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    .line 103
    move-result v2

    .line 104
    sub-int/2addr v0, p2

    .line 105
    int-to-float v0, v0

    .line 106
    mul-float/2addr v0, p1

    .line 107
    int-to-float p1, p2

    .line 108
    add-float/2addr v0, p1

    .line 109
    float-to-int p1, v0

    .line 110
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 113
    move-result p1

    .line 114
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 117
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 119
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/ViewGroup;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    :cond_7d
    return-void
.end method
