.class Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;
.super Ljava/lang/Object;
.source "ResponsiveActionMenuView.java"

# interfaces
.implements Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 3
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$502(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;Z)Z

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 8
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$600(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    .line 11
    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

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
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 23
    invoke-static {v2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_23

    .line 29
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 31
    invoke-static {v2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$300(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object v2

    .line 35
    goto :goto_29

    .line 36
    :cond_23
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 38
    invoke-static {v2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$400(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object v2

    .line 42
    :goto_29
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3, v2, v1}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I

    .line 51
    move-result-object v1

    .line 52
    if-eqz v0, :cond_38

    .line 54
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    .line 56
    goto :goto_3a

    .line 57
    :cond_38
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Dark;->DEFAULT:[I

    .line 59
    :goto_3a
    const/16 v2, 0x42

    .line 61
    invoke-virtual {p1, v1, v0, v2}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    .line 64
    return-void
.end method
