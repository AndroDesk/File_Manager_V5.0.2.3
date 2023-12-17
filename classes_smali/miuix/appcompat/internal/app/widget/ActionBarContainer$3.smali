.class Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;
.super Ljava/lang/Object;
.source "ActionBarContainer.java"

# interfaces
.implements Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .registers 4

    .line 1
    if-eqz p1, :cond_9

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$602(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$602(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z

    .line 16
    :goto_f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 18
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_20

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 26
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setApplyBgBlur(Z)V

    .line 33
    :cond_20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 35
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_31

    .line 41
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 43
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->updateBackground(Z)V

    .line 50
    :cond_31
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 55
    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4c

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 11
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 16
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_4c

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 24
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Ljava/lang/Boolean;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_28

    .line 30
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 32
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Ljava/lang/Boolean;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result v0

    .line 40
    goto :goto_2e

    .line 41
    :cond_28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 43
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z

    .line 46
    move-result v0

    .line 47
    :goto_2e
    if-eqz p1, :cond_43

    .line 49
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 51
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 54
    move-result-object p1

    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-interface {p1, v1}, Lmiuix/view/BlurableWidget;->setSupportBlur(Z)V

    .line 59
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 61
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1, v1}, Lmiuix/view/BlurableWidget;->setEnableBlur(Z)V

    .line 68
    :cond_43
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 70
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1, v0}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    .line 77
    :cond_4c
    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lmiuix/appcompat/R$attr;->isLightTheme:I

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_12

    .line 16
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Light;->EXTRA_HEAVY:[I

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Dark;->EXTRA_HEAVY:[I

    .line 21
    :goto_14
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 29
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {v2, v3, v1}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I

    .line 36
    move-result-object v1

    .line 37
    if-eqz v0, :cond_29

    .line 39
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Dark;->DEFAULT:[I

    .line 44
    :goto_2b
    const/16 v2, 0x42

    .line 46
    invoke-virtual {p1, v1, v0, v2}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    .line 49
    return-void
.end method
