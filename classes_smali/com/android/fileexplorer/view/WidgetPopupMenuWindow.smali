.class public Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;
.super Lmiuix/internal/widget/PopupMenuWindow;
.source "WidgetPopupMenuWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;
    }
.end annotation


# static fields
.field private static mPopUpWindowHeight:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Lmiuix/appcompat/app/Fragment;

.field private mOnItemClickListener:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;

.field private mSortMenuView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/Fragment;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lmiuix/internal/widget/PopupMenuWindow;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mContext:Landroid/content/Context;

    .line 14
    iput-object p1, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 16
    invoke-direct {p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->initPopupWindow()V

    .line 19
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mOnItemClickListener:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;

    .line 3
    return-object p0
.end method

.method private initListener()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 3
    const v1, 0x7f0a046f

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$1;

    .line 21
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$1;-><init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 29
    const v1, 0x7f0a0471

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$2;

    .line 47
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$2;-><init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 55
    const v1, 0x7f0a0470

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$3;

    .line 73
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$3;-><init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 81
    const v1, 0x7f0a0473

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$4;

    .line 99
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$4;-><init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 107
    const v1, 0x7f0a046e

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v0

    .line 123
    new-instance v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$5;

    .line 125
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$5;-><init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method private initPopupWindow()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mContext:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f0d01ea

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 25
    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 32
    move-result v0

    .line 33
    const v1, 0x7f070802

    .line 36
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 39
    move-result v1

    .line 40
    mul-int/lit8 v1, v1, 0x2

    .line 42
    sub-int/2addr v0, v1

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 46
    const/4 v0, -0x2

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 50
    sget v0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mPopUpWindowHeight:I

    .line 52
    if-nez v0, :cond_38

    .line 54
    invoke-direct {p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->measurePopupwindowWidth()V

    .line 57
    :cond_38
    invoke-direct {p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->initListener()V

    .line 60
    return-void
.end method

.method private measurePopupwindowWidth()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 5
    move-result v1

    .line 6
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 9
    move-result v0

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 12
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    move-result v0

    .line 21
    sput v0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mPopUpWindowHeight:I

    .line 23
    return-void
.end method

.method public static resetIsMeasure()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mPopUpWindowHeight:I

    .line 4
    return-void
.end method

.method public static setBackgroundAlpha(Landroid/app/Activity;F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/internal/widget/PopupMenuWindow;->onDismiss()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object v0

    .line 10
    const/high16 v1, 0x3f800000  # 1.0f

    .line 12
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->setBackgroundAlpha(Landroid/app/Activity;F)V

    .line 15
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mOnItemClickListener:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;

    .line 3
    return-void
.end method

.method public showPopupwindow(Landroid/view/View;)V
    .registers 5

    .line 1
    sget v0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mPopUpWindowHeight:I

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->measurePopupwindowWidth()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object v0

    .line 14
    const v1, 0x3f333333  # 0.7f

    .line 17
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->setBackgroundAlpha(Landroid/app/Activity;F)V

    .line 20
    const v0, 0x7f070802

    .line 23
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 26
    move-result v0

    .line 27
    sget v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mPopUpWindowHeight:I

    .line 29
    neg-int v1, v1

    .line 30
    const v2, 0x7f070801

    .line 33
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 36
    move-result v2

    .line 37
    sub-int/2addr v1, v2

    .line 38
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 41
    return-void
.end method
