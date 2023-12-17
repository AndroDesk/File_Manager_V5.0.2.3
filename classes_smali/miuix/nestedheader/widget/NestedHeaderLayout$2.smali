.class Lmiuix/nestedheader/widget/NestedHeaderLayout$2;
.super Ljava/lang/Object;
.source "NestedHeaderLayout.java"

# interfaces
.implements Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/nestedheader/widget/NestedHeaderLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;


# direct methods
.method public constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_12

    .line 3
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 5
    invoke-static {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$500(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 11
    invoke-static {v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$400(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    goto :goto_21

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 21
    invoke-static {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$500(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 27
    invoke-static {v1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$200(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :goto_21
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 36
    invoke-static {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$600(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_32

    .line 42
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 44
    invoke-static {v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$600(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;

    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout$NestedHeaderChangedListener;->onOverViewBlurStateChanged(Z)V

    .line 51
    :cond_32
    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_d

    .line 3
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 11
    invoke-static {p1, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$402(Lmiuix/nestedheader/widget/NestedHeaderLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 14
    :cond_d
    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x1010590

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_13

    .line 17
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Light;->DEFAULT:[I

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Dark;->DEFAULT:[I

    .line 22
    :goto_15
    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v3

    .line 28
    iget-object v4, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 30
    invoke-static {v4}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$200(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v4

    .line 34
    invoke-static {v3, v4, v1}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I

    .line 37
    move-result-object v1

    .line 38
    if-eqz v0, :cond_2a

    .line 40
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Dark;->DEFAULT:[I

    .line 45
    :goto_2c
    iget-object v3, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    .line 47
    invoke-static {v3}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$300(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    .line 50
    move-result v3

    .line 51
    const/16 v4, 0x42

    .line 53
    if-eqz v3, :cond_47

    .line 55
    new-array v3, v2, [I

    .line 57
    const/4 v5, 0x0

    .line 58
    aget v1, v1, v5

    .line 60
    aput v1, v3, v5

    .line 62
    new-array v1, v2, [I

    .line 64
    aget v0, v0, v5

    .line 66
    aput v0, v1, v5

    .line 68
    invoke-virtual {p1, v3, v1, v4}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    .line 71
    goto :goto_4a

    .line 72
    :cond_47
    invoke-virtual {p1, v1, v0, v4}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    .line 75
    :goto_4a
    return-void
.end method
