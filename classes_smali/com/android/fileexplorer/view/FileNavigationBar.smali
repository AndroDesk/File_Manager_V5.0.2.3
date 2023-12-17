.class public Lcom/android/fileexplorer/view/FileNavigationBar;
.super Landroid/widget/LinearLayout;
.source "FileNavigationBar.java"


# instance fields
.field private mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

.field private mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

.field private mTabIndex:I

.field private mVolumeSwitchImage:Landroid/widget/ImageView;

.field private mVolumeSwitchLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/FileNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/FileNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private dismissVolumeSwitchGuidePop()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    return-void
.end method

.method private showSwitchGuidePop(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setArrowMode(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    const v1, 0x7f1100ce

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    return-void
.end method


# virtual methods
.method public initPathGalley()V
    .registers 1

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032932

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f032935

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchImage:Landroid/widget/ImageView;

    const v0, 0x7f032e9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/PathGallery;

    iput-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/android/fileexplorer/view/FileNavigationBar;->dismissVolumeSwitchGuidePop()V

    :cond_8
    return-void
.end method

.method public setTabIndex(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mTabIndex:I

    return-void
.end method

.method public setVolumeSwitchVisible(ZI)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_12
    return-void
.end method

.method public showVolumeHintPopup(ZI)V
    .registers 4

    if-eqz p1, :cond_21

    iget p1, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mTabIndex:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    const/4 p1, 0x1

    if-le p2, p1, :cond_24

    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->shouldShowVolumeSwitchPopup()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FileNavigationBar;->showSwitchGuidePop(Landroid/view/View;)V

    :cond_1d
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->increaseShowVolumeSwitchPopupCount()V

    goto :goto_24

    :cond_21
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FileNavigationBar;->dismissVolumeSwitchGuidePop()V

    :cond_24
    :goto_24
    return-void
.end method

.method public updatePathGalley(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    return-void
.end method
