.class public abstract Lmiuix/navigator/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Lmiuix/navigator/NavigatorFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/Navigator$NavigatorStateListener;,
        Lmiuix/navigator/Navigator$Category;,
        Lmiuix/navigator/Navigator$Label;,
        Lmiuix/navigator/Navigator$Zone;,
        Lmiuix/navigator/Navigator$Mode;
    }
.end annotation


# static fields
.field public static final KEY_MIUIX_NAVIGATOR_MODE:Ljava/lang/String; = "miuix:navigatorMode"

.field public static final KEY_MIUIX_NAVIGATOR_STATE:Ljava/lang/String; = "miuix:navigatorState"

.field public static final KEY_MIUIX_NAVIGATOR_STRATEGY:Ljava/lang/String; = "miuix:navigatorStrategy"

.field public static final SPLIT_ANIMATION_DEFAULT_STYLE:I = 0x0

.field public static final SPLIT_ANIMATION_SECTION_STYLE:I = 0x1

.field public static final SPLIT_ANIMATION_SHADE_STYLE:I = 0x2

.field public static final TAG_CONTENT:Ljava/lang/String; = "miuix.content"

.field public static final TAG_NAVIGATION:Ljava/lang/String; = "miuix.navigation"

.field public static final TAG_ROOT:Ljava/lang/String; = "miuix.root"

.field public static final TAG_SECONDARY_CONTENT:Ljava/lang/String; = "miuix.secondaryContent"

.field public static final VIEW_TYPE_CATEGORY:I = -0x2

.field public static final VIEW_TYPE_DRAG_PLACEHOLDER:I = -0x3

.field public static final VIEW_TYPE_LABEL:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lmiuix/navigator/NavigatorFragmentController;

    .line 7
    if-eqz v0, :cond_13

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lmiuix/navigator/NavigatorFragmentController;

    .line 15
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorFragmentController;->getNavigator()Lmiuix/navigator/SubNavigator;

    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_13
    instance-of v0, p0, Lmiuix/navigator/NavHostFragment;

    .line 22
    if-eqz v0, :cond_1f

    .line 24
    move-object v0, p0

    .line 25
    check-cast v0, Lmiuix/navigator/NavHostFragment;

    .line 27
    invoke-virtual {v0, p0}, Lmiuix/navigator/NavHostFragment;->getNavigator(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static getZone(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator$Zone;
    .registers 1

    .line 1
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object p0

    invoke-static {p0}, Lmiuix/navigator/Navigator;->getZone(Lmiuix/navigator/Navigator;)Lmiuix/navigator/Navigator$Zone;

    move-result-object p0

    return-object p0
.end method

.method public static getZone(Lmiuix/navigator/Navigator;)Lmiuix/navigator/Navigator$Zone;
    .registers 2

    if-eqz p0, :cond_17

    .line 2
    instance-of v0, p0, Lmiuix/navigator/ContentSubNavigator;

    if-eqz v0, :cond_9

    .line 3
    sget-object p0, Lmiuix/navigator/Navigator$Zone;->CONTENT:Lmiuix/navigator/Navigator$Zone;

    return-object p0

    .line 4
    :cond_9
    instance-of v0, p0, Lmiuix/navigator/SecondaryContentSubNavigator;

    if-eqz v0, :cond_10

    .line 5
    sget-object p0, Lmiuix/navigator/Navigator$Zone;->SECONDARY_CONTENT:Lmiuix/navigator/Navigator$Zone;

    return-object p0

    .line 6
    :cond_10
    instance-of p0, p0, Lmiuix/navigator/NavigationSubNavigator;

    if-eqz p0, :cond_17

    .line 7
    sget-object p0, Lmiuix/navigator/Navigator$Zone;->NAVIGATION:Lmiuix/navigator/Navigator$Zone;

    return-object p0

    .line 8
    :cond_17
    sget-object p0, Lmiuix/navigator/Navigator$Zone;->NORMAL:Lmiuix/navigator/Navigator$Zone;

    return-object p0
.end method


# virtual methods
.method public abstract addCategory(Lmiuix/navigator/Navigator$Category;)V
.end method

.method public abstract addCategory(Lmiuix/navigator/Navigator$Category;I)V
.end method

.method public abstract addLabel(Lmiuix/navigator/Navigator$Label;)V
.end method

.method public abstract addLabel(Lmiuix/navigator/Navigator$Label;I)V
.end method

.method public abstract addNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V
.end method

.method public abstract addNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V
.end method

.method public abstract addTab(Lmiuix/navigator/BottomTab;)V
.end method

.method public abstract addTab(Lmiuix/navigator/BottomTab;I)V
.end method

.method public abstract applyBottomNavigationBlur(Z)V
.end method

.method public abstract canPopSecondaryContent()Z
.end method

.method public abstract closeContent()V
.end method

.method public abstract closeContent(Z)V
.end method

.method public abstract closeNavigation()V
.end method

.method public abstract closeNavigation(Z)V
.end method

.method public getBaseNavigator()Lmiuix/navigator/Navigator;
    .registers 1

    return-object p0
.end method

.method public abstract getBottomTabMenu()Landroid/view/Menu;
.end method

.method public abstract getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;
.end method

.method public abstract getContentVisibility()I
    .annotation build Lmiuix/navigator/Visibility;
    .end annotation
.end method

.method public abstract getCurrentInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.end method

.method public abstract getFragmentManager()Landroidx/fragment/app/FragmentManager;
.end method

.method public abstract getLabelAdapter()Lmiuix/navigator/adapter/LabelAdapter;
.end method

.method public abstract getNavigationMenu()I
.end method

.method public abstract getNavigationMode()Lmiuix/navigator/Navigator$Mode;
.end method

.method public abstract getNavigationVisibility()I
    .annotation build Lmiuix/navigator/Visibility;
    .end annotation
.end method

.method public abstract getOnBackPressedCallback()Landroidx/activity/h;
.end method

.method public abstract getSecondaryContentVisibility()I
    .annotation build Lmiuix/navigator/Visibility;
    .end annotation
.end method

.method public abstract getStrategy()Lmiuix/navigator/NavigatorStrategy;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract immerseSecondaryContent(Z)V
.end method

.method public abstract isContentOpen()Z
.end method

.method public abstract isFocused()Z
.end method

.method public abstract isNavigationOpen()Z
.end method

.method public abstract navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
.end method

.method public abstract newCategory(I)Lmiuix/navigator/Navigator$Category;
.end method

.method public abstract newCategory(II)Lmiuix/navigator/Navigator$Category;
.end method

.method public abstract newLabel(I)Lmiuix/navigator/Navigator$Label;
.end method

.method public abstract newTab()Lmiuix/navigator/BottomTab;
.end method

.method public abstract onBottomNavigationVisibilityChanged(ZI)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onContentVisibilityChanged(I)V
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onNavigationVisibilityChanged(I)V
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param
.end method

.method public abstract onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onSecondaryContentVisibilityChanged(I)V
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param
.end method

.method public abstract openContent()V
.end method

.method public abstract openContent(Z)V
.end method

.method public abstract openNavigation()V
.end method

.method public abstract openNavigation(Z)V
.end method

.method public abstract removeCategory(I)V
.end method

.method public abstract removeCategory(Lmiuix/navigator/Navigator$Category;)V
.end method

.method public abstract removeLabel(I)V
.end method

.method public abstract removeLabel(Lmiuix/navigator/Navigator$Label;)V
.end method

.method public abstract removeNavigatorFragmentListener(Lmiuix/navigator/NavigatorFragmentListener;)V
.end method

.method public abstract removeNavigatorStateListener(Lmiuix/navigator/Navigator$NavigatorStateListener;)V
.end method

.method public requestFocus()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/navigator/Navigator;->requestFocus(Z)V

    .line 5
    return-void
.end method

.method public abstract requestFocus(Z)V
.end method

.method public abstract selectTab(I)V
.end method

.method public abstract setBottomNavigationBackgroundVisible(Z)V
.end method

.method public abstract setBottomTabMenu(ILmiuix/navigator/navigatorinfo/NavigatorInfoProvider;)V
.end method

.method public abstract setBottomTabStyle(I)V
.end method

.method public setContentExpandedMaxWidthWithDp(I)V
    .registers 2

    return-void
.end method

.method public setContentExpandedPaddingWithDp(I)V
    .registers 2

    return-void
.end method

.method public abstract setCrossBackground(I)V
.end method

.method public abstract setCrossBackground(Landroid/view/View;)V
.end method

.method public abstract setLabelAdapter(Lmiuix/navigator/adapter/LabelAdapter;)V
.end method

.method public abstract setNavigationMenu(I)V
.end method

.method public abstract setNavigationMode(Lmiuix/navigator/Navigator$Mode;)V
.end method

.method public setSplitAnimationMaskBlurRadiusWithPx(I)V
    .registers 2

    return-void
.end method

.method public setSplitAnimationStyle(I)V
    .registers 2

    return-void
.end method

.method public abstract setStrategy(Lmiuix/navigator/NavigatorStrategy;)V
.end method

.method public abstract setTabSelectListener(Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;)V
.end method

.method public abstract toggleContent()V
.end method

.method public abstract toggleContent(Z)V
.end method

.method public abstract toggleNavigation()V
.end method

.method public abstract toggleNavigation(Z)V
.end method
