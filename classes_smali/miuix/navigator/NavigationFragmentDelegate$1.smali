.class Lmiuix/navigator/NavigationFragmentDelegate$1;
.super Ljava/lang/Object;
.source "NavigationFragmentDelegate.java"

# interfaces
.implements Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/NavigationFragmentDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/NavigationFragmentDelegate;


# direct methods
.method public constructor <init>(Lmiuix/navigator/NavigationFragmentDelegate;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/NavigationFragmentDelegate;->access$000(Lmiuix/navigator/NavigationFragmentDelegate;)Lmiuix/view/MiuiBlurUiHelper;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->getViewApplyBlur()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    if-eqz p1, :cond_1a

    .line 13
    iget-object v1, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Lmiuix/navigator/NavigationFragmentDelegate;->access$102(Lmiuix/navigator/NavigationFragmentDelegate;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    goto :goto_23

    .line 27
    :cond_1a
    iget-object v1, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    .line 29
    invoke-static {v1}, Lmiuix/navigator/NavigationFragmentDelegate;->access$100(Lmiuix/navigator/NavigationFragmentDelegate;)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    :goto_23
    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    .line 38
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_34

    .line 44
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 46
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateBackground(Z)V

    .line 53
    :cond_34
    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

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
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Light;->HEAVY:[I

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Dark;->HEAVY:[I

    .line 21
    :goto_14
    if-eqz v0, :cond_19

    .line 23
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Dark;->DEFAULT:[I

    .line 28
    :goto_1b
    const/16 v2, 0x42

    .line 30
    invoke-virtual {p1, v1, v0, v2}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    .line 33
    return-void
.end method
