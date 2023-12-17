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
.method public constructor <init>(Lmiuix/navigator/bottomnavigation/BottomNavigationView;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 3
    iput p2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->val$backgroundColor:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onBlurApplyStateChanged(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 3
    invoke-static {v0, p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->access$002(Lmiuix/navigator/bottomnavigation/BottomNavigationView;Z)Z

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1a

    .line 9
    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 11
    invoke-static {p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->access$100(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 17
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 19
    invoke-static {v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->access$200(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    goto :goto_2b

    .line 27
    :cond_1a
    iget-object p1, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 29
    invoke-static {p1}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->access$100(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_28

    .line 35
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 37
    invoke-static {v0}, Lmiuix/navigator/bottomnavigation/BottomNavigationView;->access$300(Lmiuix/navigator/bottomnavigation/BottomNavigationView;)Landroid/graphics/drawable/Drawable;

    .line 40
    move-result-object v0

    .line 41
    :cond_28
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :goto_2b
    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

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
    iget-object v2, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->this$0:Lmiuix/navigator/bottomnavigation/BottomNavigationView;

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v2

    .line 27
    iget v3, p0, Lmiuix/navigator/bottomnavigation/BottomNavigationView$1;->val$backgroundColor:I

    .line 29
    invoke-static {v2, v3, v1}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;I[I)[I

    .line 32
    move-result-object v1

    .line 33
    if-eqz v0, :cond_25

    .line 35
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Light;->DEFAULT:[I

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    sget-object v0, Lmiuix/theme/token/BlurToken$BlendMode$Dark;->DEFAULT:[I

    .line 40
    :goto_27
    const/16 v2, 0x42

    .line 42
    invoke-virtual {p1, v1, v0, v2}, Lmiuix/view/MiuiBlurUiHelper;->setBlurParams([I[II)V

    .line 45
    return-void
.end method
