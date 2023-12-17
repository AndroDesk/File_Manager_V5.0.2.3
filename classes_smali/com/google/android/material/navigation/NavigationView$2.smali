.class Lcom/google/android/material/navigation/NavigationView$2;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 12
    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->access$000(Lcom/google/android/material/navigation/NavigationView;)[I

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    aget v0, v0, v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_17

    .line 22
    move v0, v1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v0, v2

    .line 25
    :goto_18
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 27
    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->access$100(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter;->setBehindStatusBar(Z)V

    .line 34
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 36
    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawTopInsetForeground(Z)V

    .line 39
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_64

    .line 51
    const v3, 0x1020002

    .line 54
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 61
    move-result v3

    .line 62
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 67
    move-result v4

    .line 68
    if-ne v3, v4, :cond_47

    .line 70
    move v3, v1

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    move v3, v2

    .line 73
    :goto_48
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    .line 80
    move-result v0

    .line 81
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_58

    .line 87
    move v0, v1

    .line 88
    goto :goto_59

    .line 89
    :cond_58
    move v0, v2

    .line 90
    :goto_59
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 92
    if-eqz v3, :cond_60

    .line 94
    if-eqz v0, :cond_60

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move v1, v2

    .line 98
    :goto_61
    invoke-virtual {v4, v1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawBottomInsetForeground(Z)V

    .line 101
    :cond_64
    return-void
.end method
