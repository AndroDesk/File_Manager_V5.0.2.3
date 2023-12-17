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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/NavigationFragmentDelegate;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    invoke-static {v0}, Lmiuix/navigator/NavigationFragmentDelegate;->access$000(Lmiuix/navigator/NavigationFragmentDelegate;)Lmiuix/view/MiuiBlurUiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/view/MiuiBlurUiHelper;->getViewApplyBlur()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1a

    iget-object v1, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lmiuix/navigator/NavigationFragmentDelegate;->access$102(Lmiuix/navigator/NavigationFragmentDelegate;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    :cond_1a
    iget-object v1, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    invoke-static {v1}, Lmiuix/navigator/NavigationFragmentDelegate;->access$100(Lmiuix/navigator/NavigationFragmentDelegate;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_23
    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_34

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateBackground(Z)V

    :cond_34
    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/NavigationFragmentDelegate$1;->this$0:Lmiuix/navigator/NavigationFragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->isLightTheme:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Light;->HEAVY:[I

    goto :goto_14

    :cond_12
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Dark;->HEAVY:[I

    :goto_14
    if-eqz v0, :cond_19

    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    goto :goto_1b

    :cond_19
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Dark;->DEFAULT:[I

    :goto_1b
    const/16 v2, 0x42

    invoke-virtual {p1, v1, v0, v2}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    return-void
.end method
