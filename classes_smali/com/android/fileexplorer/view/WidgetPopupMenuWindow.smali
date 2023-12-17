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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/Fragment;)V
    .registers 3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/internal/widget/PopupMenuWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mFragment:Lmiuix/appcompat/app/Fragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->initPopupWindow()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mOnItemClickListener:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;

    return-object p0
.end method

.method private initListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    const v1, 0x7f0329f9

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$1;-><init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    const v1, 0x7f0329e7

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$2;-><init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    const v1, 0x7f0329e6

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$3;-><init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    const v1, 0x7f0329e5

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$4;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$4;-><init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    const v1, 0x7f0329f8

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$5;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$5;-><init>(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPopupWindow()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042c7c

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mFragment:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const v1, 0x7f070802

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget v0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mPopUpWindowHeight:I

    if-nez v0, :cond_3c

    invoke-direct {p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->measurePopupwindowWidth()V

    :cond_3c
    invoke-direct {p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->initListener()V

    return-void
.end method

.method private measurePopupwindowWidth()V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mSortMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mPopUpWindowHeight:I

    return-void
.end method

.method public static resetIsMeasure()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mPopUpWindowHeight:I

    return-void
.end method

.method public static setBackgroundAlpha(Landroid/app/Activity;F)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    invoke-super {p0}, Lmiuix/internal/widget/PopupMenuWindow;->onDismiss()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mFragment:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->setBackgroundAlpha(Landroid/app/Activity;F)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mOnItemClickListener:Lcom/android/fileexplorer/view/WidgetPopupMenuWindow$OnItemClickListener;

    return-void
.end method

.method public showPopupwindow(Landroid/view/View;)V
    .registers 5

    sget v0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mPopUpWindowHeight:I

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->measurePopupwindowWidth()V

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mFragment:Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x3f333333  # 0.7f

    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->setBackgroundAlpha(Landroid/app/Activity;F)V

    const v0, 0x7f070802

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/fileexplorer/view/WidgetPopupMenuWindow;->mPopUpWindowHeight:I

    neg-int v1, v1

    const v2, 0x7f070801

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
