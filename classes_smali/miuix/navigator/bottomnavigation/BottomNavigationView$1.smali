.class Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

.field public final synthetic val$backgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/bottomnavigation/BottomNavigationView;I)V
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    iput p2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->val$backgroundColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-static {v0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->access$002(Lmiuix/navigator/bottomnavigation/BottomNavigationView;Z)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-static {p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->access$100(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-static {v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->access$200(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_16
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    :cond_1a
    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-static {p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->access$100(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-static {v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->access$300(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_28
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2b
    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->isLightTheme:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Light;->EXTRA_HEAVY:[I

    goto :goto_14

    :cond_12
    sget-object v1, Lmiuix/theme/token/BlurToken$BlendColor$Dark;->EXTRA_HEAVY:[I

    :goto_14
    iget-object v2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->val$backgroundColor:I

    invoke-static {v2, v3, v1}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;I[I)[I

    move-result-object v1

    if-eqz v0, :cond_25

    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    goto :goto_27

    :cond_25
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Dark;->DEFAULT:[I

    :goto_27
    const/16 v2, 0x42

    invoke-virtual {p1, v1, v0, v2}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    return-void
.end method
