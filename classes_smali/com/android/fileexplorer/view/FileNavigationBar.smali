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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/FileNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/FileNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private dismissVolumeSwitchGuidePop()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8
    :cond_7
    return-void
.end method

.method private showSwitchGuidePop(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance v0, Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 12
    const/16 v1, 0x8

    .line 14
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setArrowMode(I)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 19
    const v1, 0x7f1100ce

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(I)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mGuidePopupWindow:Lmiuix/popupwidget/widget/GuidePopupWindow;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, p1, v1, v1, v1}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 31
    return-void
.end method


# virtual methods
.method public initPathGalley()V
    .registers 1

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a04a4

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchLayout:Landroid/widget/LinearLayout;

    .line 15
    const v0, 0x7f0a04a3

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchImage:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f0a030c

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/fileexplorer/view/PathGallery;

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 37
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4
    if-eqz p2, :cond_8

    .line 6
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FileNavigationBar;->dismissVolumeSwitchGuidePop()V

    .line 9
    :cond_8
    return-void
.end method

.method public setTabIndex(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mTabIndex:I

    .line 3
    return-void
.end method

.method public setVolumeSwitchVisible(ZI)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchLayout:Landroid/widget/LinearLayout;

    .line 3
    if-eqz p1, :cond_6

    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_8

    .line 7
    :cond_6
    const/16 v1, 0x8

    .line 9
    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    if-eqz p1, :cond_12

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchImage:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    :cond_12
    return-void
.end method

.method public showVolumeHintPopup(ZI)V
    .registers 4

    .line 1
    if-eqz p1, :cond_21

    .line 3
    iget p1, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mTabIndex:I

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_24

    .line 8
    const/4 p1, 0x1

    .line 9
    if-le p2, p1, :cond_24

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->shouldShowVolumeSwitchPopup()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_24

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchImage:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1d

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mVolumeSwitchImage:Landroid/widget/ImageView;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FileNavigationBar;->showSwitchGuidePop(Landroid/view/View;)V

    .line 30
    :cond_1d
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->increaseShowVolumeSwitchPopupCount()V

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-direct {p0}, Lcom/android/fileexplorer/view/FileNavigationBar;->dismissVolumeSwitchGuidePop()V

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method public updatePathGalley(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FileNavigationBar;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 6
    return-void
.end method
