.class Lmiuix/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AlertController$LayoutChangeListener;,
        Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;,
        Lmiuix/appcompat/app/AlertController$ButtonInfo;,
        Lmiuix/appcompat/app/AlertController$AlertParams;,
        Lmiuix/appcompat/app/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final FLAG_NO_EAR_AREA:I = 0x300

.field private static final TAG:Ljava/lang/String; = "AlertController"


# instance fields
.field private buildJustNow:Z

.field private configurationAfterInstalled:Landroid/content/res/Configuration;

.field public mAdapter:Landroid/widget/ListAdapter;

.field private final mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field public mButtonNegative:Landroid/widget/Button;

.field public mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field public mButtonNeutral:Landroid/widget/Button;

.field public mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field public mButtonPositive:Landroid/widget/Button;

.field public mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field public mCheckedItem:I

.field private mComment:Ljava/lang/CharSequence;

.field private mCommentTextSize:F

.field private mCommentView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCreateThread:Ljava/lang/Thread;

.field private mCurrentDensityDpi:I

.field private mCustomTitleTextSize:F

.field private mCustomTitleTextView:Landroid/widget/TextView;

.field private mCustomTitleView:Landroid/view/View;

.field private mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

.field public final mDialog:Landroidx/appcompat/app/q;

.field private mDialogContentLayout:I

.field private mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

.field private mDimBg:Landroid/view/View;

.field private mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

.field private mDuringTransition:Z

.field public mEnableEnterAnim:Z

.field private mExtraButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/AlertController$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraImeMargin:I

.field private mFakeLandScreenMinorSize:I

.field public mHandler:Landroid/os/Handler;

.field public mHapticFeedbackEnabled:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconHeight:I

.field private mIconId:I

.field private mIconWidth:I

.field private mInflatedView:Landroid/view/View;

.field private mInsetsAnimationPlayed:Z

.field private mIsChecked:Z

.field private mIsDebugEnabled:Z

.field private mIsDialogAnimating:Z

.field private mIsEnableImmersive:Z

.field private mIsFromRebuild:Z

.field private mIsInFreeForm:Z

.field private mLandscapePanel:Z

.field private final mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

.field private mLayoutReloadListener:Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;

.field public mListItemLayout:I

.field public mListLayout:I

.field public mListView:Landroid/widget/ListView;

.field private mLiteVersion:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageTextSize:F

.field private mMessageView:Landroid/widget/TextView;

.field public mMultiChoiceItemLayout:I

.field private mNonImmersiveDialogHeight:I

.field private mPanelAndImeMargin:I

.field private mPanelMaxWidth:I

.field private mPanelMaxWidthLand:I

.field private mPanelOriginLeftMargin:I

.field private mPanelOriginRightMargin:I

.field private mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

.field private mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

.field private mPreferLandscape:Z

.field private mRootViewSize:Landroid/graphics/Point;

.field private mRootViewSizeDp:Landroid/graphics/Point;

.field private mScreenMinorSize:I

.field private mScreenOrientation:I

.field private mScreenRealSize:Landroid/graphics/Point;

.field private mSetupWindowInsetsAnimation:Z

.field private mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field private mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field private final mShowTitle:Z

.field public mSingleChoiceItemLayout:I

.field private mSmallIcon:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleTextSize:F

.field private mTitleView:Landroid/widget/TextView;

.field private mTransitionConfig:Lmiuix/animation/base/AnimConfig;

.field private mTreatAsLandConfig:Z

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private final mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/q;Landroid/view/Window;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 10
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 12
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mDuringTransition:Z

    .line 14
    const/4 v2, -0x2

    .line 15
    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    .line 17
    new-instance v2, Lmiuix/appcompat/app/AlertController$1;

    .line 19
    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$1;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 22
    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    .line 24
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    .line 26
    const/4 v2, 0x0

    .line 27
    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 29
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    .line 34
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    .line 36
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    .line 38
    const/high16 v3, 0x41900000  # 18.0f

    .line 40
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mTitleTextSize:F

    .line 42
    const/high16 v4, 0x41880000  # 17.0f

    .line 44
    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mMessageTextSize:F

    .line 46
    const/high16 v4, 0x41600000  # 14.0f

    .line 48
    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mCommentTextSize:F

    .line 50
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 52
    new-instance v3, Landroid/graphics/Point;

    .line 54
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 57
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 59
    new-instance v3, Landroid/graphics/Point;

    .line 61
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 64
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 66
    new-instance v3, Landroid/graphics/Point;

    .line 68
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 71
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    .line 73
    new-instance v3, Landroid/graphics/Rect;

    .line 75
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 78
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 80
    new-instance v3, Lmiuix/appcompat/app/AlertController$2;

    .line 82
    invoke-direct {v3, p0}, Lmiuix/appcompat/app/AlertController$2;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 85
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 87
    new-instance v3, Lmiuix/appcompat/app/AlertController$3;

    .line 89
    invoke-direct {v3, p0}, Lmiuix/appcompat/app/AlertController$3;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 92
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 94
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    .line 96
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 105
    move-result-object v3

    .line 106
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 108
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 110
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 112
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 114
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 116
    new-instance v3, Lmiuix/appcompat/app/AlertController$ButtonHandler;

    .line 118
    invoke-direct {v3, p2}, Lmiuix/appcompat/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    .line 121
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v3, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 125
    invoke-direct {v3, p0}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 128
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 130
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    .line 133
    move-result v3

    .line 134
    xor-int/2addr v3, v1

    .line 135
    iput-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    .line 137
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->initScreenMinorSize(Landroid/content/Context;)V

    .line 140
    sget-object v3, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    .line 142
    const v4, 0x101005d

    .line 145
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 148
    move-result-object v2

    .line 149
    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_layout:I

    .line 151
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 154
    move-result v3

    .line 155
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 157
    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_listLayout:I

    .line 159
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 162
    move-result v3

    .line 163
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mListLayout:I

    .line 165
    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    .line 167
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 170
    move-result v3

    .line 171
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 173
    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 175
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 178
    move-result v3

    .line 179
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 181
    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    .line 183
    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 186
    move-result v3

    .line 187
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mListItemLayout:I

    .line 189
    sget v3, Lmiuix/appcompat/R$styleable;->AlertDialog_showTitle:I

    .line 191
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 194
    move-result v3

    .line 195
    iput-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mShowTitle:Z

    .line 197
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/q;->supportRequestWindowFeature(I)Z

    .line 203
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 205
    const/16 v2, 0x1c

    .line 207
    if-ge p2, v2, :cond_eb

    .line 209
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isMiuiLegacyNotch()Z

    .line 212
    move-result p2

    .line 213
    if-eqz p2, :cond_eb

    .line 215
    new-array p2, v1, [Ljava/lang/Class;

    .line 217
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 219
    aput-object v2, p2, v0

    .line 221
    new-array v1, v1, [Ljava/lang/Object;

    .line 223
    const/16 v2, 0x300

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    move-result-object v2

    .line 229
    aput-object v2, v1, v0

    .line 231
    const-string v0, "addExtraFlags"

    .line 233
    invoke-static {p3, v0, p2, v1}, Lmiuix/internal/util/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_eb
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 239
    move-result-object p2

    .line 240
    sget p3, Lmiuix/appcompat/R$bool;->treat_as_land:I

    .line 242
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 245
    move-result p2

    .line 246
    iput-boolean p2, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 251
    move-result-object p2

    .line 252
    sget p3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width:I

    .line 254
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 257
    move-result p2

    .line 258
    iput p2, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidth:I

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 263
    move-result-object p1

    .line 264
    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width_land:I

    .line 266
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 269
    move-result p1

    .line 270
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    .line 272
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 275
    move-result-object p1

    .line 276
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    .line 278
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImeDebugEnabled()Z

    .line 281
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 283
    if-eqz p1, :cond_130

    .line 285
    const-string p1, "create Dialog mCurrentDensityDpi "

    .line 287
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    move-result-object p1

    .line 291
    iget p2, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 293
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object p1

    .line 300
    const-string p2, "AlertController"

    .line 302
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_130
    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->lambda$setCustomPanelSize$2(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateContent(Landroid/view/ViewGroup;)V

    .line 4
    return-void
.end method

.method public static synthetic access$102(Lmiuix/appcompat/app/AlertController;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1100(Lmiuix/appcompat/app/AlertController;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1200(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lmiuix/appcompat/app/AlertController;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateViewOnDensityChanged(F)V

    .line 4
    return-void
.end method

.method public static synthetic access$1602(Lmiuix/appcompat/app/AlertController;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    .line 3
    return p1
.end method

.method public static synthetic access$1700(Lmiuix/appcompat/app/AlertController;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1800(Lmiuix/appcompat/app/AlertController;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 3
    return p0
.end method

.method public static synthetic access$1802(Lmiuix/appcompat/app/AlertController;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 3
    return p1
.end method

.method public static synthetic access$1900(Lmiuix/appcompat/app/AlertController;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2000(Lmiuix/appcompat/app/AlertController;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 3
    return p0
.end method

.method public static synthetic access$2100(Lmiuix/appcompat/app/AlertController;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$2200(Lmiuix/appcompat/app/AlertController;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lmiuix/appcompat/app/AlertController;)Landroid/view/Window;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2400(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2500(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2600(Lmiuix/appcompat/app/AlertController;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isFreeFormMode()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2700(Lmiuix/appcompat/app/AlertController;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelExtraBottomPadding()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2800(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2900(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/app/AlertController;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lmiuix/appcompat/app/AlertController;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 3
    return-object p1
.end method

.method public static synthetic access$600(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private adjustHeight2WrapContent()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x2

    .line 8
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    return-void
.end method

.method public static synthetic b(Lmiuix/appcompat/app/AlertController;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->lambda$setupView$1()V

    return-void
.end method

.method public static synthetic c(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->lambda$setupView$0(Landroid/view/View;)V

    return-void
.end method

.method public static canTextInput(Landroid/view/View;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_e

    .line 14
    return v2

    .line 15
    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v0

    .line 21
    :cond_14
    if-lez v0, :cond_23

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_14

    .line 35
    return v1

    .line 36
    :cond_23
    return v2
.end method

.method private changeTitlePadding(Landroid/widget/TextView;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    return-void
.end method

.method private checkAndClearFocus()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 12
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    .line 15
    :cond_e
    return-void
.end method

.method private checkThread()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method private cleanWindowInsetsAnimation()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0}, Landroidx/core/content/a;->o(Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    .line 27
    :cond_1a
    return-void
.end method

.method private clearCustomContent()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_12

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_12

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 14
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 17
    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 21
    if-eqz v0, :cond_23

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_23

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 31
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 34
    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 36
    :cond_23
    return-void
.end method

.method private clearFitSystemWindow(Landroid/view/View;)V
    .registers 5

    .line 1
    instance-of v0, p1, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 3
    if-nez v0, :cond_21

    .line 5
    if-eqz p1, :cond_21

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 11
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 13
    if-eqz v1, :cond_21

    .line 15
    :goto_e
    move-object v1, p1

    .line 16
    check-cast v1, Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v2

    .line 22
    if-ge v0, v2, :cond_21

    .line 24
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_e

    .line 34
    :cond_21
    return-void
.end method

.method private disableForceDark(Landroid/view/View;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 5
    return-void
.end method

.method private getAssociatedActivityInsets(I)Landroid/graphics/Insets;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 3
    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_24

    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    const/16 v3, 0x1e

    .line 16
    if-lt v2, v3, :cond_24

    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_24

    .line 32
    invoke-static {v0, p1}, Landroidx/core/content/a;->b(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 35
    move-result-object p1

    .line 36
    move-object v1, p1

    .line 37
    :cond_24
    return-object v1
.end method

.method private getCutoutMode(II)I
    .registers 4

    const/4 v0, 0x2

    if-nez p2, :cond_8

    if-ne p1, v0, :cond_7

    move p2, v0

    goto :goto_8

    :cond_7
    const/4 p2, 0x1

    :cond_8
    :goto_8
    return p2
.end method

.method private getDialogPanelExtraBottomPadding()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private getDialogPanelMargin()I
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 9
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 11
    const/4 v2, -0x1

    .line 12
    if-ne v1, v2, :cond_1b

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 20
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_ime_margin:I

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 28
    :cond_1b
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 30
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x1

    .line 45
    aget v0, v0, v3

    .line 47
    add-int/2addr v0, v2

    .line 48
    sub-int/2addr v1, v0

    .line 49
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 51
    sub-int/2addr v1, v0

    .line 52
    return v1
.end method

.method private getDialogWidthMargin()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 3
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 5
    const/16 v1, 0x168

    .line 7
    if-ge v0, v1, :cond_15

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v0

    .line 15
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_small_margin:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v0

    .line 21
    goto :goto_21

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 28
    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_margin:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v0

    .line 34
    :goto_21
    return v0
.end method

.method private getGravity()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const/16 v0, 0x11

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 v0, 0x51

    .line 12
    :goto_b
    return v0
.end method

.method private getImeBottomByWindowInsets()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1a

    .line 14
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_19

    .line 24
    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    .line 26
    :cond_19
    return v1

    .line 27
    :cond_1a
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 30
    move-result v0

    .line 31
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_26

    .line 37
    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    .line 39
    :cond_26
    return v1
.end method

.method private getPanelWidth(ZZ)I
    .registers 6

    .line 1
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_content:I

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    .line 6
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    .line 8
    if-eqz v2, :cond_17

    .line 10
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_17

    .line 16
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_content_land:I

    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    .line 21
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    .line 23
    goto :goto_29

    .line 24
    :cond_17
    if-eqz p2, :cond_1c

    .line 26
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidth:I

    .line 28
    goto :goto_29

    .line 29
    :cond_1c
    if-eqz p1, :cond_28

    .line 31
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    .line 33
    if-eqz p1, :cond_25

    .line 35
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    .line 37
    goto :goto_29

    .line 38
    :cond_25
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    const/4 p1, -0x1

    .line 42
    :goto_29
    iget p2, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    .line 44
    if-eq p2, v0, :cond_4f

    .line 46
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    .line 48
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 50
    if-eqz p2, :cond_38

    .line 52
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 54
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    :cond_38
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 62
    move-result-object p2

    .line 63
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    .line 65
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 67
    invoke-virtual {p2, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 73
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 75
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 77
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_4f
    return p1
.end method

.method private getScreenOrientation()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_16

    .line 18
    const/4 v2, 0x3

    .line 19
    if-ne v0, v2, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    return v1

    .line 23
    :cond_16
    :goto_16
    const/4 v0, 0x2

    .line 24
    return v0
.end method

.method private getVisibleButtonCount()I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_e

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_15

    .line 13
    :cond_c
    const/4 v1, 0x0

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    xor-int/2addr v1, v0

    .line 22
    :goto_15
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 24
    if-eqz v0, :cond_22

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2b

    .line 32
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_2b

    .line 35
    :cond_22
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 43
    goto :goto_1f

    .line 44
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 46
    if-eqz v0, :cond_38

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_41

    .line 54
    :goto_35
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_41

    .line 57
    :cond_38
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_41

    .line 65
    goto :goto_35

    .line 66
    :cond_41
    :goto_41
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 68
    if-eqz v0, :cond_6c

    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6c

    .line 76
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v0

    .line 82
    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_6c

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 94
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_69

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_51

    .line 106
    :cond_69
    add-int/lit8 v1, v1, 0x1

    .line 108
    goto :goto_51

    .line 109
    :cond_6c
    return v1
.end method

.method private hideSoftIME()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 5
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 11
    if-eqz v0, :cond_16

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 23
    :cond_16
    return-void
.end method

.method private initScreenMinorSize(Landroid/content/Context;)V
    .registers 3

    .line 1
    const-string v0, "window"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/WindowManager;

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 11
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize()V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object p1

    .line 18
    sget v0, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    move-result p1

    .line 24
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    .line 26
    return-void
.end method

.method private isCancelable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    .line 3
    return v0
.end method

.method private isCanceledOnTouchOutside()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    .line 3
    return v0
.end method

.method private isConfigurationChanged(Landroid/content/res/Configuration;)Z
    .registers 13

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->configurationAfterInstalled:Landroid/content/res/Configuration;

    .line 3
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 5
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v1, v2, :cond_c

    .line 11
    move v1, v3

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v1, v4

    .line 14
    :goto_d
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 16
    iget v5, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 18
    if-eq v2, v5, :cond_15

    .line 20
    move v2, v3

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v2, v4

    .line 23
    :goto_16
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    .line 25
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    .line 27
    if-eq v5, v6, :cond_1e

    .line 29
    move v5, v3

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v5, v4

    .line 32
    :goto_1f
    iget v6, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 34
    iget v7, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 36
    if-eq v6, v7, :cond_27

    .line 38
    move v6, v3

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v6, v4

    .line 41
    :goto_28
    iget v7, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 43
    iget v8, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 45
    if-eq v7, v8, :cond_30

    .line 47
    move v7, v3

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v7, v4

    .line 50
    :goto_31
    iget v8, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 52
    iget v9, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 54
    if-eq v8, v9, :cond_39

    .line 56
    move v8, v3

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v8, v4

    .line 59
    :goto_3a
    iget v9, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 61
    iget v10, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 63
    cmpl-float v9, v9, v10

    .line 65
    if-eqz v9, :cond_44

    .line 67
    move v9, v3

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    move v9, v4

    .line 70
    :goto_45
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 72
    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 74
    if-eq v0, p1, :cond_4d

    .line 76
    move p1, v3

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move p1, v4

    .line 79
    :goto_4e
    if-nez v1, :cond_60

    .line 81
    if-nez v2, :cond_60

    .line 83
    if-nez v5, :cond_60

    .line 85
    if-nez v6, :cond_60

    .line 87
    if-nez v7, :cond_60

    .line 89
    if-nez v9, :cond_60

    .line 91
    if-nez v8, :cond_60

    .line 93
    if-eqz p1, :cond_5f

    .line 95
    goto :goto_60

    .line 96
    :cond_5f
    move v3, v4

    .line 97
    :cond_60
    :goto_60
    return v3
.end method

.method private isDialogImeDebugEnabled()Z
    .registers 5

    .line 1
    const-string v0, "AlertController"

    .line 3
    const-string v1, ""

    .line 5
    :try_start_4
    const-string v2, "log.tag.alertdialog.ime.debug.enable"

    .line 7
    invoke-static {v2}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_f

    .line 11
    if-nez v2, :cond_d

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    move-object v1, v2

    .line 15
    goto :goto_15

    .line 16
    :catch_f
    move-exception v2

    .line 17
    const-string v3, "can not access property log.tag.alertdialog.ime.enable, undebugable"

    .line 19
    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v3, "Alert dialog ime debugEnable = "

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v0, "true"

    .line 44
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    move-result v0

    .line 48
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 50
    return v0
.end method

.method private isFreeFormMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private isInPcMode()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "synergy_mode"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_11

    .line 17
    move v2, v1

    .line 18
    :cond_11
    return v2
.end method

.method private isLandscape()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->isLandscape(I)Z

    move-result v0

    return v0
.end method

.method private isLandscape(I)Z
    .registers 5

    .line 2
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 3
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 4
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-eqz v2, :cond_19

    .line 5
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0, p1}, Lmiuix/appcompat/app/AlertController;->judgeLandscape(III)Z

    move-result p1

    return p1

    :cond_19
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1e

    return v2

    .line 6
    :cond_1e
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isInPcMode()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    invoke-static {p1, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :cond_35
    :goto_35
    return v1
.end method

.method private isMiuiLegacyNotch()Z
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "android.os.SystemProperties"

    .line 3
    invoke-static {v0}, Lmiuix/internal/util/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 12
    const-class v4, Ljava/lang/String;

    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 17
    const/4 v4, 0x1

    .line 18
    aput-object v1, v3, v4

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    const-string v6, "ro.miui.notch"

    .line 24
    aput-object v6, v2, v5

    .line 26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v6

    .line 30
    aput-object v6, v2, v4

    .line 32
    const-string v6, "getInt"

    .line 34
    invoke-static {v0, v1, v6, v3, v2}, Lmiuix/internal/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v0

    .line 44
    if-ne v0, v4, :cond_2e

    .line 46
    move v5, v4

    .line 47
    :cond_2e
    return v5
.end method

.method private isNeedUpdateDialogPanelTranslationY()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v1, v4, :cond_1d

    .line 24
    const/4 v4, 0x3

    .line 25
    if-ne v1, v4, :cond_1b

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    move v1, v2

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    :goto_1d
    move v1, v3

    .line 31
    :goto_1e
    sget-boolean v4, Lmiuix/os/Build;->IS_TABLET:Z

    .line 33
    if-eqz v0, :cond_34

    .line 35
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isFreeFormMode()Z

    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_34

    .line 41
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {v5}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_32

    .line 49
    move v5, v2

    .line 50
    goto :goto_35

    .line 51
    :cond_32
    move v5, v3

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    const/4 v5, -0x1

    .line 54
    :goto_35
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    .line 56
    if-eqz v6, :cond_41

    .line 58
    if-eqz v4, :cond_3d

    .line 60
    if-nez v1, :cond_50

    .line 62
    :cond_3d
    if-nez v5, :cond_50

    .line 64
    :cond_3f
    :goto_3f
    move v2, v3

    .line 65
    goto :goto_50

    .line 66
    :cond_41
    if-eqz v4, :cond_45

    .line 68
    if-nez v1, :cond_50

    .line 70
    :cond_45
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    .line 72
    if-eqz v1, :cond_50

    .line 74
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    .line 76
    if-nez v1, :cond_3f

    .line 78
    if-eqz v0, :cond_50

    .line 80
    goto :goto_3f

    .line 81
    :cond_50
    :goto_50
    return v2
.end method

.method private isNotch(Landroid/view/WindowInsets;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_18

    .line 11
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_18

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_18

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_18
    return v0
.end method

.method private isSpecifiedDialogHeight()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 7
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    .line 9
    const/4 v1, -0x2

    .line 10
    if-eq v0, v1, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return v0
.end method

.method private isTablet()Z
    .registers 2

    .line 1
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 3
    return v0
.end method

.method private judgeLandscape(III)Z
    .registers 6

    const/4 v0, 0x1

    if-le p1, p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-ge p1, p2, :cond_8

    return v1

    :cond_8
    const/4 p1, 0x2

    if-ne p3, p1, :cond_c

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    return v0
.end method

.method private synthetic lambda$setCustomPanelSize$2(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    return-void
.end method

.method private synthetic lambda$setupView$0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCancelable()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_14

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCanceledOnTouchOutside()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_14

    .line 13
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 18
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 21
    :cond_14
    return-void
.end method

.method private synthetic lambda$setupView$1()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 7
    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    .line 9
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 11
    invoke-interface {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;->onPanelSizeChanged(Lmiuix/appcompat/app/AlertDialog;Lmiuix/appcompat/internal/widget/DialogParentPanel2;)V

    .line 14
    :cond_d
    return-void
.end method

.method private listViewIsNeedFullScroll()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 7
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 10
    move-result v1

    .line 11
    mul-int/2addr v1, v0

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 14
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 16
    int-to-float v0, v0

    .line 17
    const v2, 0x3eb33333  # 0.35f

    .line 20
    mul-float/2addr v0, v2

    .line 21
    float-to-int v0, v0

    .line 22
    if-le v1, v0, :cond_19

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :goto_1a
    return v0
.end method

.method private onLayoutReload()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 3
    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->onLayoutReload()V

    .line 8
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutReloadListener:Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-interface {v0}, Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;->onLayoutReload()V

    .line 15
    :cond_e
    return-void
.end method

.method private reInitLandConfig()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lmiuix/appcompat/R$bool;->treat_as_land:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    sget v1, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    .line 29
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize()V

    .line 32
    return-void
.end method

.method private resetListMaxHeight()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 3
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 5
    int-to-float v0, v0

    .line 6
    const v1, 0x3eb33333  # 0.35f

    .line 9
    mul-float/2addr v0, v1

    .line 10
    float-to-int v0, v0

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    .line 14
    move-result v1

    .line 15
    div-int/2addr v0, v1

    .line 16
    mul-int/2addr v0, v1

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 22
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    move-result-object v1

    .line 28
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    return-void
.end method

.method private safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    if-ne v0, p2, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    :cond_e
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    return-void
.end method

.method private safeRemoveFromParent(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    :cond_b
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 13

    .line 1
    const v0, 0x1020019

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/Button;

    .line 10
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 26
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v0

    .line 37
    const/16 v1, 0x8

    .line 39
    const/4 v2, 0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v0, :cond_31

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    move v0, v3

    .line 49
    goto :goto_43

    .line 50
    :cond_31
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 52
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 59
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 64
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 67
    move v0, v2

    .line 68
    :goto_43
    const v4, 0x102001a

    .line 71
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Landroid/widget/Button;

    .line 77
    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 79
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 81
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 86
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    .line 88
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 93
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    .line 95
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 100
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_6f

    .line 106
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 108
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    goto :goto_82

    .line 112
    :cond_6f
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 114
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 121
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 126
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 128
    invoke-direct {p0, v4}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 131
    :goto_82
    const v4, 0x102001b

    .line 134
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Landroid/widget/Button;

    .line 140
    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 142
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 144
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 149
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    .line 151
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 156
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    .line 158
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 163
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_ae

    .line 169
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 171
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    goto :goto_c1

    .line 175
    :cond_ae
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 177
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 179
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 184
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 189
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 191
    invoke-direct {p0, v4}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 194
    :goto_c1
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 196
    const/4 v5, 0x0

    .line 197
    if-eqz v4, :cond_178

    .line 199
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 202
    move-result v4

    .line 203
    if-nez v4, :cond_178

    .line 205
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 207
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 210
    move-result-object v4

    .line 211
    :cond_d2
    :goto_d2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_ec

    .line 217
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    move-result-object v6

    .line 221
    check-cast v6, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 223
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 226
    move-result-object v7

    .line 227
    if-eqz v7, :cond_d2

    .line 229
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 232
    move-result-object v6

    .line 233
    invoke-direct {p0, v6}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 236
    goto :goto_d2

    .line 237
    :cond_ec
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 239
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 242
    move-result-object v4

    .line 243
    :goto_f2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    move-result v6

    .line 247
    if-eqz v6, :cond_178

    .line 249
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    move-result-object v6

    .line 253
    check-cast v6, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 255
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 258
    move-result-object v7

    .line 259
    if-nez v7, :cond_145

    .line 261
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 263
    const/4 v8, -0x2

    .line 264
    const/high16 v9, 0x3f800000  # 1.0f

    .line 266
    invoke-direct {v7, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 269
    new-instance v8, Lmiuix/internal/widget/GroupButton;

    .line 271
    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 273
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    .line 276
    move-result v10

    .line 277
    invoke-direct {v8, v9, v5, v10}, Lmiuix/internal/widget/GroupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 280
    invoke-static {v6, v8}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$402(Lmiuix/appcompat/app/AlertController$ButtonInfo;Lmiuix/internal/widget/GroupButton;)Lmiuix/internal/widget/GroupButton;

    .line 283
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 286
    move-result-object v8

    .line 287
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$800(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Ljava/lang/CharSequence;

    .line 290
    move-result-object v9

    .line 291
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 297
    move-result-object v8

    .line 298
    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 300
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 306
    move-result-object v8

    .line 307
    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 317
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 320
    move-result-object v7

    .line 321
    const/16 v8, 0x11

    .line 323
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 326
    :cond_145
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$500(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/os/Message;

    .line 329
    move-result-object v7

    .line 330
    if-nez v7, :cond_15c

    .line 332
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 334
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$900(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    .line 337
    move-result v8

    .line 338
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1500(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    .line 341
    move-result-object v9

    .line 342
    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 345
    move-result-object v7

    .line 346
    invoke-static {v6, v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$502(Lmiuix/appcompat/app/AlertController$ButtonInfo;Landroid/os/Message;)Landroid/os/Message;

    .line 349
    :cond_15c
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 352
    move-result-object v7

    .line 353
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 356
    move-result v7

    .line 357
    if-eq v7, v1, :cond_16f

    .line 359
    add-int/lit8 v0, v0, 0x1

    .line 361
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 364
    move-result-object v7

    .line 365
    invoke-direct {p0, v7}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 368
    :cond_16f
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 371
    move-result-object v6

    .line 372
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 375
    goto/16 :goto_f2

    .line 377
    :cond_178
    if-nez v0, :cond_17e

    .line 379
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    goto :goto_189

    .line 383
    :cond_17e
    move-object v1, p1

    .line 384
    check-cast v1, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    .line 386
    iget-boolean v4, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    .line 388
    invoke-virtual {v1, v4}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setForceVertical(Z)V

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 394
    :goto_189
    new-instance v1, Landroid/graphics/Point;

    .line 396
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 399
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 401
    invoke-static {v4, v1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 404
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 406
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 408
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 411
    move-result v1

    .line 412
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 414
    sget v6, Lmiuix/appcompat/R$id;->contentPanel:I

    .line 416
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 419
    move-result-object v4

    .line 420
    check-cast v4, Landroid/view/ViewGroup;

    .line 422
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 424
    invoke-static {v6}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 427
    move-result-object v6

    .line 428
    iget v6, v6, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 430
    const/16 v7, 0x1001

    .line 432
    if-ne v6, v7, :cond_1b3

    .line 434
    move v6, v2

    .line 435
    goto :goto_1b4

    .line 436
    :cond_1b3
    move v6, v3

    .line 437
    :goto_1b4
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 439
    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 441
    int-to-float v8, v7

    .line 442
    int-to-float v1, v1

    .line 443
    const v9, 0x3eb33333  # 0.35f

    .line 446
    mul-float/2addr v9, v1

    .line 447
    cmpg-float v8, v8, v9

    .line 449
    if-gtz v8, :cond_1c9

    .line 451
    if-eqz v6, :cond_1c9

    .line 453
    const/4 v6, 0x3

    .line 454
    if-lt v0, v6, :cond_1c9

    .line 456
    move v0, v2

    .line 457
    goto :goto_1ca

    .line 458
    :cond_1c9
    move v0, v3

    .line 459
    :goto_1ca
    int-to-float v6, v7

    .line 460
    const v7, 0x3e99999a  # 0.3f

    .line 463
    mul-float/2addr v1, v7

    .line 464
    cmpg-float v1, v6, v1

    .line 466
    if-lez v1, :cond_1d7

    .line 468
    if-eqz v0, :cond_1d6

    .line 470
    goto :goto_1d7

    .line 471
    :cond_1d6
    move v2, v3

    .line 472
    :cond_1d7
    :goto_1d7
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    .line 474
    if-nez v0, :cond_1eb

    .line 476
    if-nez v2, :cond_1e3

    .line 478
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 480
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 483
    goto :goto_1eb

    .line 484
    :cond_1e3
    invoke-direct {p0, p1, v4}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 487
    check-cast v4, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 489
    invoke-virtual {v4, v5}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 492
    :cond_1eb
    :goto_1eb
    return-void
.end method

.method private setupCheckbox(Landroid/view/ViewGroup;Landroid/view/ViewStub;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2d

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p2, 0x1020001

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-boolean p2, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 6
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/4 p2, 0x2

    if-eqz p1, :cond_26

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setTextAlignment(I)V

    .line 9
    :cond_26
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz p1, :cond_2d

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setTextAlignment(I)V

    :cond_2d
    return-void
.end method

.method private setupCheckbox(Landroid/widget/CheckBox;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_13
    const/16 v0, 0x8

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_18
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;Z)V
    .registers 12

    .line 1
    const v0, 0x102002b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_28

    .line 14
    if-eqz p2, :cond_25

    .line 16
    new-instance p2, Landroid/animation/LayoutTransition;

    .line 18
    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    .line 21
    const-wide/16 v3, 0xc8

    .line 23
    invoke-virtual {p2, v2, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 26
    new-instance v3, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    .line 28
    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    .line 31
    invoke-virtual {p2, v2, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 34
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 37
    goto :goto_28

    .line 38
    :cond_25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 41
    :cond_28
    :goto_28
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 43
    const/4 v3, 0x1

    .line 44
    if-eqz p2, :cond_d6

    .line 46
    if-eqz v0, :cond_34

    .line 48
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    .line 51
    move-result p2

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move p2, v2

    .line 54
    :goto_35
    const/4 v4, -0x2

    .line 55
    const/4 v5, -0x1

    .line 56
    if-eqz p2, :cond_a3

    .line 58
    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 70
    new-instance v6, Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v7

    .line 76
    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 84
    invoke-direct {p0, v7}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 87
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 89
    sget-object v8, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 91
    invoke-static {v7, v3}, Lm0/g0$i;->t(Landroid/view/View;Z)V

    .line 94
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 96
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    invoke-direct {v7, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 101
    invoke-virtual {v6, v3, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->listViewIsNeedFullScroll()Z

    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_7b

    .line 110
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->adjustHeight2WrapContent()V

    .line 113
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 115
    const/high16 v8, 0x3f800000  # 1.0f

    .line 117
    invoke-direct {v7, v5, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 120
    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    goto :goto_87

    .line 124
    :cond_7b
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->resetListMaxHeight()V

    .line 127
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    const/4 v8, 0x0

    .line 130
    invoke-direct {v7, v5, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 133
    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    :goto_87
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 138
    invoke-direct {v0, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 141
    invoke-virtual {p1, v6, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Landroid/view/ViewGroup;

    .line 150
    if-eqz p2, :cond_9a

    .line 152
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    .line 155
    :cond_9a
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 157
    if-nez v3, :cond_9f

    .line 159
    move-object v1, v6

    .line 160
    :cond_9f
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 163
    goto :goto_100

    .line 164
    :cond_a3
    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 173
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 176
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 178
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 181
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 183
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    .line 186
    move-result v0

    .line 187
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 190
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 192
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 194
    invoke-static {p2, v3}, Lm0/g0$i;->t(Landroid/view/View;Z)V

    .line 197
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 199
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 201
    invoke-direct {v0, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 204
    invoke-virtual {p1, p2, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 207
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 209
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 211
    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 214
    goto :goto_100

    .line 215
    :cond_d6
    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    .line 217
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    move-result-object p2

    .line 221
    check-cast p2, Landroid/view/ViewGroup;

    .line 223
    if-eqz p2, :cond_e3

    .line 225
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    .line 228
    :cond_e3
    if-eqz v0, :cond_f7

    .line 230
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    .line 233
    move-result p2

    .line 234
    if-eqz p2, :cond_f6

    .line 236
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 239
    move-result-object v2

    .line 240
    if-eqz v2, :cond_f6

    .line 242
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 244
    invoke-static {v2, v3}, Lm0/g0$i;->t(Landroid/view/View;Z)V

    .line 247
    :cond_f6
    move v2, p2

    .line 248
    :cond_f7
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 250
    if-eqz v2, :cond_fc

    .line 252
    goto :goto_fd

    .line 253
    :cond_fc
    move-object v0, v1

    .line 254
    :goto_fd
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 257
    :goto_100
    return-void
.end method

.method private setupContentView(Landroid/view/ViewGroup;)V
    .registers 4

    .line 1
    sget v0, Lmiuix/appcompat/R$id;->message:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 11
    sget v0, Lmiuix/appcompat/R$id;->comment:I

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 23
    if-eqz v0, :cond_31

    .line 25
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 27
    if-eqz v1, :cond_31

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 34
    if-eqz p1, :cond_34

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mComment:Ljava/lang/CharSequence;

    .line 38
    if-eqz v0, :cond_2b

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    goto :goto_34

    .line 44
    :cond_2b
    const/16 v0, 0x8

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    goto :goto_34

    .line 50
    :cond_31
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 53
    :cond_34
    :goto_34
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_12

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_12

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 14
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 17
    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 19
    :cond_12
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_19

    .line 24
    move-object v1, v0

    .line 25
    goto :goto_2b

    .line 26
    :cond_19
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 28
    if-eqz v0, :cond_2b

    .line 30
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 38
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 44
    :cond_2b
    :goto_2b
    if-eqz v1, :cond_2e

    .line 46
    const/4 v2, 0x1

    .line 47
    :cond_2e
    if-eqz v2, :cond_36

    .line 49
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3d

    .line 55
    :cond_36
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 57
    const/high16 v3, 0x20000

    .line 59
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 62
    :cond_3d
    if-eqz v2, :cond_43

    .line 64
    invoke-direct {p0, v1, p1}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 67
    goto :goto_46

    .line 68
    :cond_43
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 71
    :goto_46
    return v2
.end method

.method private setupImmersiveWindow()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 9
    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 22
    sget v1, Lmiuix/appcompat/R$style;->Animation_Dialog_NoAnimation:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 27
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 29
    const v1, -0x7ffff700

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    const/16 v1, 0x1c

    .line 39
    if-le v0, v1, :cond_5e

    .line 41
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 43
    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    .line 45
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_4d

    .line 51
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 53
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 56
    move-result-object v2

    .line 57
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    .line 60
    move-result v3

    .line 61
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 68
    move-result-object v1

    .line 69
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 71
    invoke-direct {p0, v3, v1}, Lmiuix/appcompat/app/AlertController;->getCutoutMode(II)I

    .line 74
    move-result v1

    .line 75
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 77
    goto :goto_5e

    .line 78
    :cond_4d
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x2

    .line 83
    if-ne v1, v2, :cond_55

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    const/4 v2, 0x1

    .line 87
    :goto_56
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 89
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 92
    move-result-object v1

    .line 93
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 95
    :cond_5e
    :goto_5e
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 97
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 100
    move-result-object v1

    .line 101
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    .line 104
    const/16 v1, 0x1e

    .line 106
    if-lt v0, v1, :cond_92

    .line 108
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 110
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Landroidx/core/content/a;->s(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 119
    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    .line 121
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_92

    .line 127
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 134
    move-result-object v0

    .line 135
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 137
    const/16 v1, 0x400

    .line 139
    and-int/2addr v0, v1

    .line 140
    if-nez v0, :cond_92

    .line 142
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 147
    :cond_92
    return-void
.end method

.method private setupNonImmersiveWindow()V
    .registers 10

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isLandscape()Z

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldLimitWidth()Z

    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/AlertController;->getPanelWidth(ZZ)I

    .line 12
    move-result v0

    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, 0x2

    .line 15
    if-nez v1, :cond_1d

    .line 17
    if-ne v0, v2, :cond_1d

    .line 19
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogWidthMargin()I

    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 25
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 27
    mul-int/2addr v0, v3

    .line 28
    sub-int v0, v1, v0

    .line 30
    :cond_1d
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    .line 32
    if-lez v1, :cond_28

    .line 34
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 36
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 38
    if-lt v1, v4, :cond_28

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move v2, v1

    .line 42
    :goto_29
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    .line 45
    move-result v1

    .line 46
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 48
    invoke-virtual {v4, v1}, Landroid/view/Window;->setGravity(I)V

    .line 51
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 53
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 56
    move-result-object v4

    .line 57
    and-int/lit8 v1, v1, 0x50

    .line 59
    const/4 v5, 0x0

    .line 60
    if-lez v1, :cond_ab

    .line 62
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    move-result-object v1

    .line 68
    sget v6, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_ime_margin:I

    .line 70
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    move-result v1

    .line 74
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {v6}, Lmiuix/core/util/MiuixUIUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    .line 79
    move-result v6

    .line 80
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {v7}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_65

    .line 88
    iget-boolean v7, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 90
    if-nez v7, :cond_65

    .line 92
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {v7}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_65

    .line 100
    const/4 v7, 0x1

    .line 101
    goto :goto_66

    .line 102
    :cond_65
    move v7, v5

    .line 103
    :goto_66
    iget-boolean v8, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 105
    if-nez v8, :cond_6e

    .line 107
    if-eqz v7, :cond_93

    .line 109
    if-eqz v6, :cond_93

    .line 111
    :cond_6e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 113
    const/16 v7, 0x1e

    .line 115
    if-lt v6, v7, :cond_93

    .line 117
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 120
    move-result v6

    .line 121
    invoke-direct {p0, v6}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    .line 124
    move-result-object v6

    .line 125
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    move-result-object v7

    .line 131
    sget v8, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_phone_t:I

    .line 133
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 136
    move-result v7

    .line 137
    if-eqz v6, :cond_8d

    .line 139
    iget v6, v6, Landroid/graphics/Insets;->bottom:I

    .line 141
    goto :goto_8e

    .line 142
    :cond_8d
    move v6, v5

    .line 143
    :goto_8e
    if-nez v6, :cond_92

    .line 145
    add-int/2addr v1, v7

    .line 146
    goto :goto_93

    .line 147
    :cond_92
    add-int/2addr v1, v6

    .line 148
    :cond_93
    :goto_93
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 150
    const/high16 v7, 0x8000000

    .line 152
    and-int/2addr v6, v7

    .line 153
    if-eqz v6, :cond_9f

    .line 155
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 157
    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 160
    :cond_9f
    int-to-float v1, v1

    .line 161
    const/high16 v6, 0x3f800000  # 1.0f

    .line 163
    mul-float/2addr v1, v6

    .line 164
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 166
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 168
    int-to-float v6, v6

    .line 169
    div-float/2addr v1, v6

    .line 170
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 172
    :cond_ab
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 174
    const/16 v6, 0x1c

    .line 176
    if-lt v1, v6, :cond_b3

    .line 178
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 180
    :cond_b3
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 182
    invoke-virtual {v1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 185
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 187
    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 190
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 192
    const/high16 v3, 0x40000

    .line 194
    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 197
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 199
    const v3, 0x3e99999a  # 0.3f

    .line 202
    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 205
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 207
    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 210
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 212
    sget v2, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    .line 214
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 217
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 219
    if-eqz v1, :cond_f2

    .line 221
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 227
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 229
    const/4 v0, -0x2

    .line 230
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 232
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 239
    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 243
    :cond_f2
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 245
    if-eqz v0, :cond_104

    .line 247
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_109

    .line 253
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 255
    sget v1, Lmiuix/appcompat/R$style;->Animation_Dialog_Center:I

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 260
    goto :goto_109

    .line 261
    :cond_104
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 263
    invoke-virtual {v0, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 266
    :cond_109
    :goto_109
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 3
    const v1, 0x1020006

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 14
    const/16 v2, 0x8

    .line 16
    if-eqz v1, :cond_31

    .line 18
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 21
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 23
    const/4 v3, -0x1

    .line 24
    const/4 v4, -0x2

    .line 25
    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 28
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {p1, v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 36
    sget v1, Lmiuix/appcompat/R$id;->alertTitle:I

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    goto/16 :goto_d1

    .line 50
    :cond_31
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v1

    .line 56
    xor-int/lit8 v1, v1, 0x1

    .line 58
    if-eqz v1, :cond_c0

    .line 60
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mShowTitle:Z

    .line 62
    if-eqz v1, :cond_c0

    .line 64
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 66
    sget v3, Lmiuix/appcompat/R$id;->alertTitle:I

    .line 68
    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 76
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 78
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    .line 83
    if-eqz v1, :cond_58

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    goto :goto_78

    .line 89
    :cond_58
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 91
    if-eqz v1, :cond_60

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    goto :goto_78

    .line 97
    :cond_60
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 102
    move-result v3

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 106
    move-result v4

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 110
    move-result v5

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 114
    move-result v6

    .line 115
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 118
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :goto_78
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSmallIcon:Z

    .line 123
    if-eqz v1, :cond_9c

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    move-result-object v1

    .line 129
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    move-result-object v3

    .line 135
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_icon_drawable_width_small:I

    .line 137
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 140
    move-result v3

    .line 141
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    move-result-object v3

    .line 149
    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_icon_drawable_height_small:I

    .line 151
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 154
    move-result v3

    .line 155
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    :cond_9c
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    .line 159
    if-eqz v1, :cond_b0

    .line 161
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    .line 163
    if-eqz v1, :cond_b0

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 168
    move-result-object v0

    .line 169
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    .line 171
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 173
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    .line 175
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    :cond_b0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 179
    if-eqz v0, :cond_d1

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 184
    move-result p1

    .line 185
    if-eq p1, v2, :cond_d1

    .line 187
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 189
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->changeTitlePadding(Landroid/widget/TextView;)V

    .line 192
    goto :goto_d1

    .line 193
    :cond_c0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 195
    sget v3, Lmiuix/appcompat/R$id;->alertTitle:I

    .line 197
    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_d1
    :goto_d1
    return-void
.end method

.method private setupView()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    .line 1
    invoke-direct {p0, v0, v1, v1, v2}, Lmiuix/appcompat/app/AlertController;->setupView(ZZZF)V

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->storeCustomViewInitialTextSize()V

    return-void
.end method

.method private setupView(ZZZF)V
    .registers 9

    .line 3
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_16

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    new-instance v2, Lmiuix/appcompat/app/c;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/c;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateDialogPanel()V

    goto :goto_3e

    .line 6
    :cond_16
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isSpecifiedDialogHeight()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 7
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isLandscape()Z

    move-result v2

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldLimitWidth()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lmiuix/appcompat/app/AlertController;->getPanelWidth(ZZ)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_39
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3e
    const/4 v0, 0x1

    if-nez p1, :cond_54

    if-nez p2, :cond_54

    .line 12
    iget-boolean p2, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz p2, :cond_48

    goto :goto_54

    .line 13
    :cond_48
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    new-instance p2, Lmiuix/appcompat/app/AlertController$6;

    invoke-direct {p2, p0, p4}, Lmiuix/appcompat/app/AlertController$6;-><init>(Lmiuix/appcompat/app/AlertController;F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_cf

    .line 14
    :cond_54
    :goto_54
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget p4, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 15
    iget-object p4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v2, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 16
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v3, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz p4, :cond_77

    .line 17
    invoke-direct {p0, p4, p3}, Lmiuix/appcompat/app/AlertController;->setupContent(Landroid/view/ViewGroup;Z)V

    :cond_77
    if-eqz v2, :cond_7c

    .line 18
    invoke-direct {p0, v2}, Lmiuix/appcompat/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    :cond_7c
    if-eqz p2, :cond_81

    .line 19
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    :cond_81
    const/4 p3, 0x0

    if-eqz p2, :cond_8c

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-eq p4, v1, :cond_8c

    move p4, v0

    goto :goto_8d

    :cond_8c
    move p4, p3

    :goto_8d
    if-eqz p4, :cond_a3

    const/4 p4, 0x0

    .line 21
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_98

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_9e

    .line 22
    :cond_98
    sget p4, Lmiuix/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    :cond_9e
    if-eqz p4, :cond_a3

    .line 23
    invoke-virtual {p4, p3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_a3
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p2, :cond_b9

    .line 25
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p3, :cond_b9

    .line 26
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    iget p3, p0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    const/4 p4, -0x1

    if-le p3, p4, :cond_b9

    .line 28
    invoke-virtual {p2, p3, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 29
    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setSelection(I)V

    .line 30
    :cond_b9
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget p3, Lmiuix/appcompat/R$id;->checkbox_stub:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    if-eqz p2, :cond_ca

    .line 31
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0, p3, p2}, Lmiuix/appcompat/app/AlertController;->setupCheckbox(Landroid/view/ViewGroup;Landroid/view/ViewStub;)V

    :cond_ca
    if-nez p1, :cond_cf

    .line 32
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->onLayoutReload()V

    .line 33
    :cond_cf
    :goto_cf
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    new-instance p2, Lmiuix/appcompat/app/a;

    invoke-direct {p2, p0, v0}, Lmiuix/appcompat/app/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setupWindow()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupImmersiveWindow()V

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupNonImmersiveWindow()V

    .line 14
    :goto_d
    return-void
.end method

.method private setupWindowInsetsAnimation()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 16
    and-int/lit8 v0, v0, 0xf

    .line 18
    or-int/lit8 v0, v0, 0x30

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 22
    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 25
    new-instance v0, Lmiuix/appcompat/app/AlertController$7;

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertController$7;-><init>(Lmiuix/appcompat/app/AlertController;I)V

    .line 31
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 33
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2, v0}, Landroidx/core/content/a;->p(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 40
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 42
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    new-instance v2, Lmiuix/appcompat/app/AlertController$8;

    .line 48
    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$8;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 54
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    .line 56
    return-void
.end method

.method private shouldLimitWidth()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 3
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 5
    const/16 v1, 0x18a

    .line 7
    if-lt v0, v1, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method private shouldUseLandscapePanel()Z
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVisibleButtonCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 11
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 13
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 15
    iget v3, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    .line 17
    if-ge v2, v3, :cond_13

    .line 19
    return v1

    .line 20
    :cond_13
    mul-int/lit8 v2, v2, 0x2

    .line 22
    if-gt v2, v0, :cond_18

    .line 24
    return v1

    .line 25
    :cond_18
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1e
    return v1
.end method

.method private storeCustomViewInitialTextSize()V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 17
    if-eqz v2, :cond_1d

    .line 19
    const v3, 0x1020016

    .line 22
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/widget/TextView;

    .line 28
    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 30
    :cond_1d
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 32
    if-eqz v2, :cond_46

    .line 34
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    .line 37
    move-result v2

    .line 38
    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    const/16 v3, 0x1e

    .line 44
    const/4 v4, 0x2

    .line 45
    if-lt v2, v3, :cond_35

    .line 47
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 49
    invoke-static {v2}, Landroidx/core/content/a;->a(Landroid/widget/TextView;)I

    .line 52
    move-result v2

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v2, v4

    .line 55
    :goto_36
    const/4 v3, 0x1

    .line 56
    if-ne v2, v3, :cond_3f

    .line 58
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 60
    div-float/2addr v1, v0

    .line 61
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 63
    goto :goto_46

    .line 64
    :cond_3f
    if-ne v2, v4, :cond_46

    .line 66
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 68
    div-float/2addr v0, v1

    .line 69
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 71
    :cond_46
    :goto_46
    return-void
.end method

.method private translateDialogPanel(I)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    const-string v0, "The DialogPanel transitionY for : "

    .line 7
    const-string v1, "AlertController"

    .line 9
    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    :cond_b
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 23
    int-to-float p1, p1

    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 27
    return-void
.end method

.method private updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 9

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {v1, v0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 11
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 13
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 15
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 24
    move-result-object v1

    .line 25
    iget v1, v1, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    const/16 v4, 0x1001

    .line 31
    if-ne v1, v4, :cond_22

    .line 33
    move v1, v2

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move v1, v3

    .line 36
    :goto_23
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 38
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 40
    int-to-float v4, v4

    .line 41
    int-to-float v0, v0

    .line 42
    const v5, 0x3eb33333  # 0.35f

    .line 45
    mul-float/2addr v5, v0

    .line 46
    cmpg-float v4, v4, v5

    .line 48
    if-gtz v4, :cond_3c

    .line 50
    if-eqz v1, :cond_3c

    .line 52
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVisibleButtonCount()I

    .line 55
    move-result v1

    .line 56
    const/4 v4, 0x3

    .line 57
    if-lt v1, v4, :cond_3c

    .line 59
    move v1, v2

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v1, v3

    .line 62
    :goto_3d
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 64
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 66
    int-to-float v4, v4

    .line 67
    const v5, 0x3e99999a  # 0.3f

    .line 70
    mul-float/2addr v0, v5

    .line 71
    cmpg-float v0, v4, v0

    .line 73
    if-lez v0, :cond_4e

    .line 75
    if-eqz v1, :cond_4d

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move v2, v3

    .line 79
    :cond_4e
    :goto_4e
    if-nez v2, :cond_56

    .line 81
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 83
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 86
    goto :goto_5f

    .line 87
    :cond_56
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 90
    check-cast p2, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 92
    const/4 p1, 0x0

    .line 93
    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 96
    :goto_5f
    return-void
.end method

.method private updateContent(Landroid/view/ViewGroup;)V
    .registers 8

    .line 1
    const v0, 0x102002b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_15

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result v3

    .line 18
    if-lez v3, :cond_15

    .line 20
    move v3, v1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v3, v2

    .line 23
    :goto_16
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 25
    const/4 v5, 0x0

    .line 26
    if-eqz v4, :cond_67

    .line 28
    if-eqz v3, :cond_61

    .line 30
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->listViewIsNeedFullScroll()Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_45

    .line 36
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->adjustHeight2WrapContent()V

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 45
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 47
    const/high16 v2, 0x3f800000  # 1.0f

    .line 49
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/view/View;

    .line 60
    move-object v1, p1

    .line 61
    check-cast v1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 63
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 69
    goto :goto_7b

    .line 70
    :cond_45
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->resetListMaxHeight()V

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    const/4 v2, -0x2

    .line 80
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 82
    const/4 v2, 0x0

    .line 83
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    move-object v0, p1

    .line 89
    check-cast v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 91
    invoke-virtual {v0, v5}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 97
    goto :goto_7b

    .line 98
    :cond_61
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 100
    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 103
    goto :goto_7b

    .line 104
    :cond_67
    if-eqz v3, :cond_72

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 109
    move-result-object v2

    .line 110
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 112
    invoke-static {v2, v1}, Lm0/g0$i;->t(Landroid/view/View;Z)V

    .line 115
    :cond_72
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    .line 117
    if-eqz v3, :cond_77

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move-object v0, v5

    .line 121
    :goto_78
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 124
    :goto_7b
    return-void
.end method

.method private updateDialogPanel()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isLandscape()Z

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldLimitWidth()Z

    .line 8
    move-result v1

    .line 9
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 11
    if-eqz v2, :cond_36

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v3, "updateDialogPanel isLandScape "

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const-string v3, "AlertController"

    .line 32
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v4, "updateDialogPanel shouldLimitWidth "

    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_36
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/AlertController;->getPanelWidth(ZZ)I

    .line 60
    move-result v0

    .line 61
    const/4 v3, -0x2

    .line 62
    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    .line 68
    move-result v0

    .line 69
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 71
    if-eqz v1, :cond_4a

    .line 73
    const/4 v0, 0x0

    .line 74
    goto :goto_4e

    .line 75
    :cond_4a
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogWidthMargin()I

    .line 78
    move-result v0

    .line 79
    :goto_4e
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 81
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 83
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginLeftMargin:I

    .line 85
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginRightMargin:I

    .line 87
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method private updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    .line 4
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isNeedUpdateDialogPanelTranslationY()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_a4

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 12
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    .line 15
    move-result v0

    .line 16
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 31
    move-result-object v2

    .line 32
    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 34
    const-string v4, "AlertController"

    .line 36
    if-eqz v3, :cond_84

    .line 38
    const-string v3, "======================Debug for checkTranslateDialogPanel======================"

    .line 40
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v5, "The mPanelAndImeMargin: "

    .line 50
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v5, "The imeInsets info: "

    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v5, "The navigationBarInsets info: "

    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v5, "The insets info: "

    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_84
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_8f

    .line 139
    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    .line 141
    invoke-direct {p0, v3}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    .line 144
    :cond_8f
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 146
    if-eqz v0, :cond_98

    .line 148
    if-nez p1, :cond_98

    .line 150
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 152
    sub-int/2addr v1, v2

    .line 153
    :cond_98
    invoke-direct {p0, v1, v0, p1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelTranslationYByIme(IZZ)V

    .line 156
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 158
    if-eqz p1, :cond_a4

    .line 160
    const-string p1, "===================End of Debug for checkTranslateDialogPanel==================="

    .line 162
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_a4
    return-void
.end method

.method private updateDialogPanelTranslationYByIme(IZZ)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "AlertController"

    .line 4
    if-lez p1, :cond_88

    .line 6
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    .line 9
    move-result v2

    .line 10
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    .line 15
    move-result v3

    .line 16
    int-to-float v2, v2

    .line 17
    add-float/2addr v2, v3

    .line 18
    float-to-int v2, v2

    .line 19
    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 21
    if-gtz v2, :cond_18

    .line 23
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 25
    :cond_18
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 27
    if-eqz v2, :cond_3e

    .line 29
    const-string v2, "updateDialogPanelTranslationYByIme mPanelAndImeMargin "

    .line 31
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v2

    .line 35
    iget v3, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v3, " isMultiWindowMode "

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, " imeBottom "

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3e
    if-eqz p2, :cond_44

    .line 65
    if-nez p3, :cond_44

    .line 67
    neg-int p2, p1

    .line 68
    goto :goto_48

    .line 69
    :cond_44
    neg-int p2, p1

    .line 70
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 72
    add-int/2addr p2, v2

    .line 73
    :goto_48
    if-eqz p3, :cond_4f

    .line 75
    iget p3, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 77
    if-ge p1, p3, :cond_4f

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move v0, p2

    .line 81
    :goto_50
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    .line 83
    if-eqz p1, :cond_7b

    .line 85
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 87
    if-eqz p1, :cond_5d

    .line 89
    const-string p1, "updateDialogPanelTranslationYByIme anim translateDialogPanel Y="

    .line 91
    invoke-static {p1, v0, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    :cond_5d
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 103
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 108
    move-result-object p1

    .line 109
    const-wide/16 p2, 0xc8

    .line 111
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 114
    move-result-object p1

    .line 115
    int-to-float p2, v0

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 123
    goto :goto_9f

    .line 124
    :cond_7b
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 126
    if-eqz p1, :cond_84

    .line 128
    const-string p1, "updateDialogPanelTranslationYByIme translateDialogPanel Y="

    .line 130
    invoke-static {p1, v0, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    :cond_84
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    .line 136
    goto :goto_9f

    .line 137
    :cond_88
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 139
    if-eqz p1, :cond_91

    .line 141
    const-string p1, "updateDialogPanelTranslationYByIme imeBottom <= 0"

    .line 143
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_91
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 151
    move-result p1

    .line 152
    const/4 p2, 0x0

    .line 153
    cmpg-float p1, p1, p2

    .line 155
    if-gez p1, :cond_9f

    .line 157
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    .line 160
    :cond_9f
    :goto_9f
    return-void
.end method

.method private updateDimBgBottomMargin(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 11
    if-eq v1, p1, :cond_13

    .line 13
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 20
    :cond_13
    return-void
.end method

.method private updateMinorScreenSize()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 13
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 22
    int-to-float v0, v0

    .line 23
    const/high16 v2, 0x43200000  # 160.0f

    .line 25
    div-float/2addr v0, v2

    .line 26
    mul-float/2addr v0, v1

    .line 27
    float-to-int v0, v0

    .line 28
    if-lez v0, :cond_20

    .line 30
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    .line 32
    goto :goto_38

    .line 33
    :cond_20
    new-instance v0, Landroid/graphics/Point;

    .line 35
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 38
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 40
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 47
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 49
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 51
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    .line 57
    :goto_38
    return-void
.end method

.method private updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_177

    .line 7
    if-nez p1, :cond_a

    .line 9
    goto/16 :goto_177

    .line 11
    :cond_a
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 32
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_3e

    .line 38
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 40
    if-nez v2, :cond_3e

    .line 42
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 47
    move-result v3

    .line 48
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 51
    move-result v4

    .line 52
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 55
    move-result v5

    .line 56
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 59
    move-result p1

    .line 60
    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    :cond_3e
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 65
    if-eqz p1, :cond_6e

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v2, "updateParentPanel navigationBar "

    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    const-string v2, "AlertController"

    .line 86
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v3, "updateParentPanel mDisplayCutoutSafeInsets "

    .line 96
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 101
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_6e
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 116
    move-result p1

    .line 117
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 119
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 122
    move-result v2

    .line 123
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 133
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    move-result-object v4

    .line 139
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_ime_margin:I

    .line 141
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 144
    move-result v4

    .line 145
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 148
    move-result v1

    .line 149
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 151
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 153
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 156
    move-result v1

    .line 157
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 159
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    .line 162
    move-result v5

    .line 163
    float-to-int v5, v5

    .line 164
    const/4 v6, 0x0

    .line 165
    if-gez v5, :cond_a7

    .line 167
    move v5, v6

    .line 168
    :cond_a7
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 170
    iget v7, v7, Landroid/graphics/Point;->x:I

    .line 172
    int-to-float v7, v7

    .line 173
    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 175
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    .line 178
    move-result v8

    .line 179
    sub-float/2addr v7, v8

    .line 180
    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 182
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 185
    move-result v8

    .line 186
    int-to-float v8, v8

    .line 187
    sub-float/2addr v7, v8

    .line 188
    float-to-int v7, v7

    .line 189
    if-gez v7, :cond_bf

    .line 191
    move v7, v6

    .line 192
    :cond_bf
    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 194
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 196
    iget v9, v0, Landroid/graphics/Insets;->left:I

    .line 198
    sub-int/2addr v9, v2

    .line 199
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_e0

    .line 205
    if-lt v5, v2, :cond_d7

    .line 207
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 209
    sub-int/2addr v5, v8

    .line 210
    sub-int/2addr v2, v5

    .line 211
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 214
    move-result v2

    .line 215
    goto :goto_e2

    .line 216
    :cond_d7
    sub-int/2addr v2, v5

    .line 217
    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginLeftMargin:I

    .line 219
    sub-int/2addr v2, v5

    .line 220
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 223
    move-result v2

    .line 224
    goto :goto_e2

    .line 225
    :cond_e0
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginLeftMargin:I

    .line 227
    :goto_e2
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 229
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 231
    iget v8, v0, Landroid/graphics/Insets;->right:I

    .line 233
    sub-int/2addr v8, p1

    .line 234
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 237
    move-result p1

    .line 238
    if-eqz p1, :cond_103

    .line 240
    if-lt v7, p1, :cond_fa

    .line 242
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 244
    sub-int/2addr v7, v5

    .line 245
    sub-int/2addr p1, v7

    .line 246
    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    .line 249
    move-result p1

    .line 250
    goto :goto_105

    .line 251
    :cond_fa
    sub-int/2addr p1, v7

    .line 252
    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginRightMargin:I

    .line 254
    sub-int/2addr p1, v5

    .line 255
    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    .line 258
    move-result p1

    .line 259
    goto :goto_105

    .line 260
    :cond_103
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginRightMargin:I

    .line 262
    :goto_105
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 264
    invoke-static {v5}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    .line 267
    move-result v5

    .line 268
    const/4 v7, 0x1

    .line 269
    if-eqz v5, :cond_11c

    .line 271
    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 273
    if-nez v5, :cond_11c

    .line 275
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 277
    invoke-static {v5}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    .line 280
    move-result v5

    .line 281
    if-eqz v5, :cond_11c

    .line 283
    move v5, v7

    .line 284
    goto :goto_11d

    .line 285
    :cond_11c
    move v5, v6

    .line 286
    :goto_11d
    iget-boolean v8, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 288
    if-nez v8, :cond_123

    .line 290
    if-eqz v5, :cond_150

    .line 292
    :cond_123
    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    .line 294
    if-nez v5, :cond_150

    .line 296
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 299
    move-result v0

    .line 300
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    .line 303
    move-result-object v0

    .line 304
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 306
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 309
    move-result-object v5

    .line 310
    sget v8, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_phone_t:I

    .line 312
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 315
    move-result v5

    .line 316
    if-eqz v0, :cond_140

    .line 318
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 320
    goto :goto_141

    .line 321
    :cond_140
    move v0, v6

    .line 322
    :goto_141
    if-nez v0, :cond_145

    .line 324
    add-int/2addr v5, v4

    .line 325
    goto :goto_147

    .line 326
    :cond_145
    add-int v5, v4, v0

    .line 328
    :goto_147
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getImeBottomByWindowInsets()I

    .line 331
    move-result v0

    .line 332
    if-lez v0, :cond_14e

    .line 334
    goto :goto_153

    .line 335
    :cond_14e
    move v4, v5

    .line 336
    goto :goto_153

    .line 337
    :cond_150
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 339
    add-int/2addr v4, v0

    .line 340
    :goto_153
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 342
    if-eq v0, v1, :cond_15a

    .line 344
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 346
    move v6, v7

    .line 347
    :cond_15a
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 349
    if-eq v0, v4, :cond_161

    .line 351
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 353
    move v6, v7

    .line 354
    :cond_161
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 356
    if-eq v0, v2, :cond_168

    .line 358
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 360
    move v6, v7

    .line 361
    :cond_168
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 363
    if-eq v0, p1, :cond_16f

    .line 365
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 367
    goto :goto_170

    .line 368
    :cond_16f
    move v7, v6

    .line 369
    :goto_170
    if-eqz v7, :cond_177

    .line 371
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 376
    :cond_177
    :goto_177
    return-void
.end method

.method private updateRootViewSize(Landroid/content/res/Configuration;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget-object v2, v0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 3
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget-object v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 5
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 6
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_4e

    const-string v0, "updateRootViewSize mRootViewSizeDp "

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRootViewSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " configuration.density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlertController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return-void
.end method

.method private updateRootViewSize(Landroid/view/View;)V
    .registers 5

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 16
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 17
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_58

    const-string v0, "updateRootViewSize by view mRootViewSizeDp "

    .line 18
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRootViewSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " configuration.density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlertController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void
.end method

.method private updateViewOnDensityChanged(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(Landroid/view/View;F)V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 10
    if-eqz v0, :cond_10

    .line 12
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleTextSize:F

    .line 14
    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeSpUnit(Landroid/widget/TextView;F)V

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 19
    if-eqz v0, :cond_19

    .line 21
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mMessageTextSize:F

    .line 23
    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeSpUnit(Landroid/widget/TextView;F)V

    .line 26
    :cond_19
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 28
    if-eqz v0, :cond_27

    .line 30
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCommentTextSize:F

    .line 32
    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeSpUnit(Landroid/widget/TextView;F)V

    .line 35
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 37
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(Landroid/view/View;F)V

    .line 40
    :cond_27
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 42
    if-eqz v0, :cond_34

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 46
    if-eqz v0, :cond_34

    .line 48
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 50
    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeDefaultUnit(Landroid/widget/TextView;F)V

    .line 53
    :cond_34
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 55
    sget v1, Lmiuix/appcompat/R$id;->buttonPanel:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_41

    .line 63
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    .line 66
    :cond_41
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 68
    sget v1, Lmiuix/appcompat/R$id;->topPanel:I

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    if-eqz v0, :cond_50

    .line 78
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(Landroid/view/View;F)V

    .line 81
    :cond_50
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 83
    sget v1, Lmiuix/appcompat/R$id;->contentView:I

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_5d

    .line 91
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    .line 94
    :cond_5d
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 96
    const v1, 0x1020001

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/widget/CheckBox;

    .line 105
    if-eqz v0, :cond_6d

    .line 107
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    .line 110
    :cond_6d
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 112
    const v1, 0x1020006

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/ImageView;

    .line 121
    if-eqz v0, :cond_80

    .line 123
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewSize(Landroid/view/View;F)V

    .line 126
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    .line 129
    :cond_80
    return-void
.end method

.method private updateWindowCutoutMode()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    .line 4
    move-result v0

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v2, 0x1c

    .line 9
    if-le v1, v2, :cond_a0

    .line 11
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    .line 13
    if-eq v1, v0, :cond_a0

    .line 15
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 19
    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    .line 21
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_60

    .line 27
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 34
    move-result-object v1

    .line 35
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 37
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/AlertController;->getCutoutMode(II)I

    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 43
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 46
    move-result-object v1

    .line 47
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 49
    if-eq v1, v0, :cond_a0

    .line 51
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 53
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 56
    move-result-object v1

    .line 57
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 59
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 61
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 67
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_a0

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_a0

    .line 79
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 81
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 83
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 86
    move-result-object v1

    .line 87
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 89
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    goto :goto_a0

    .line 97
    :cond_60
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    .line 100
    move-result v0

    .line 101
    const/4 v1, 0x2

    .line 102
    if-ne v0, v1, :cond_68

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    const/4 v1, 0x1

    .line 106
    :goto_69
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 108
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 111
    move-result-object v0

    .line 112
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 114
    if-eq v0, v1, :cond_a0

    .line 116
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 118
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 121
    move-result-object v0

    .line 122
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 124
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 126
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 129
    move-result-object v0

    .line 130
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 132
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_a0

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_a0

    .line 144
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 146
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 148
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 151
    move-result-object v1

    .line 152
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 154
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 157
    move-result-object v2

    .line 158
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :cond_a0
    :goto_a0
    return-void
.end method


# virtual methods
.method public addExtraButton(Lmiuix/appcompat/app/AlertController$ButtonInfo;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$800(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1a

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 13
    if-nez v0, :cond_15

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1a
    return-void
.end method

.method public clearExtraButton()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_7
    return-void
.end method

.method public dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_9

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->cleanWindowInsetsAnimation()V

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 12
    if-nez v0, :cond_13

    .line 14
    if-eqz p1, :cond_12

    .line 16
    invoke-interface {p1}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    .line 19
    :cond_12
    return-void

    .line 20
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_24

    .line 26
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->checkAndClearFocus()V

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 31
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 33
    invoke-static {v0, v1, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    .line 36
    goto :goto_39

    .line 37
    :cond_24
    const-string p1, "AlertController"

    .line 39
    const-string v0, "dialog is not attached to window when dismiss is invoked"

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_2b
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 46
    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    .line 48
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_32} :catch_33

    .line 51
    goto :goto_39

    .line 52
    :catch_33
    move-exception v0

    .line 53
    const-string v1, "Not catch the dialog will throw the illegalArgumentException (In Case cause the crash , we expect it should be caught)"

    .line 55
    invoke-static {p1, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :goto_39
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x52

    .line 7
    if-ne p1, v0, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    return p1
.end method

.method public getButton(I)Landroid/widget/Button;
    .registers 5

    .line 1
    const/4 v0, -0x3

    .line 2
    if-eq p1, v0, :cond_38

    .line 4
    const/4 v0, -0x2

    .line 5
    if-eq p1, v0, :cond_35

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_32

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 12
    if-eqz v0, :cond_30

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_30

    .line 20
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_30

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 38
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$900(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    .line 41
    move-result v2

    .line 42
    if-ne v2, p1, :cond_19

    .line 44
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_30
    const/4 p1, 0x0

    .line 50
    return-object p1

    .line 51
    :cond_32
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 53
    return-object p1

    .line 54
    :cond_35
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 56
    return-object p1

    .line 57
    :cond_38
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 59
    return-object p1
.end method

.method public getIconAttributeResId(I)I
    .registers 5

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 16
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 18
    return p1
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 3
    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 3
    return-object v0
.end method

.method public getNonImmersiveDialogHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    .line 3
    return v0
.end method

.method public getSingleItemMinHeight()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 3
    sget v1, Lmiuix/appcompat/R$attr;->dialogListPreferredItemHeight:I

    .line 5
    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public installContent(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_5

    .line 4
    move p1, v0

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    const/4 p1, 0x0

    .line 7
    :goto_6
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsFromRebuild:Z

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    .line 14
    move-result p1

    .line 15
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 17
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/q;

    .line 19
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 21
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/q;->setContentView(I)V

    .line 24
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 26
    sget v1, Lmiuix/appcompat/R$id;->dialog_root_view:I

    .line 28
    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 34
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 36
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 38
    sget v1, Lmiuix/appcompat/R$id;->dialog_dim_bg:I

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 46
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 48
    new-instance v1, Lmiuix/appcompat/app/AlertController$4;

    .line 50
    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertController$4;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 53
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/widget/DialogRootView;->setConfigurationChangedCallback(Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;)V

    .line 56
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 69
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupWindow()V

    .line 72
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupView()V

    .line 75
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->configurationAfterInstalled:Landroid/content/res/Configuration;

    .line 77
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    .line 79
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 81
    new-instance v0, Lmiuix/appcompat/app/AlertController$5;

    .line 83
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertController$5;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method public isChecked()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 3
    const v1, 0x1020001

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/CheckBox;

    .line 12
    if-nez v0, :cond_f

    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    .line 22
    return v0
.end method

.method public isDialogImmersive()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v1, 0x1e

    .line 9
    if-lt v0, v1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v1, 0x1e

    .line 8
    if-lt v0, v1, :cond_c

    .line 10
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupWindowInsetsAnimation()V

    .line 13
    :cond_c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V
    .registers 9

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 9
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 11
    int-to-float v1, v0

    .line 12
    const/high16 v2, 0x3f800000  # 1.0f

    .line 14
    mul-float/2addr v1, v2

    .line 15
    iget v3, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 17
    int-to-float v3, v3

    .line 18
    div-float/2addr v1, v3

    .line 19
    cmpl-float v2, v1, v2

    .line 21
    if-eqz v2, :cond_18

    .line 23
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 25
    :cond_18
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 27
    const-string v3, "AlertController"

    .line 29
    if-eqz v0, :cond_38

    .line 31
    const-string v0, "onConfigurationChangednewDensityDpi "

    .line 33
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v0

    .line 37
    iget v4, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v4, " densityScale "

    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_38
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    .line 59
    if-eqz v0, :cond_45

    .line 61
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->isConfigurationChanged(Landroid/content/res/Configuration;)Z

    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_45

    .line 67
    if-nez p2, :cond_45

    .line 69
    return-void

    .line 70
    :cond_45
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    .line 73
    const/4 v4, -0x1

    .line 74
    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 76
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 79
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 81
    if-eqz p1, :cond_64

    .line 83
    const-string p1, "onConfigurationChanged mRootViewSize "

    .line 85
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    move-result-object p1

    .line 89
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 91
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_64
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->checkThread()Z

    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_8e

    .line 107
    const-string p1, "dialog is created in thread:"

    .line 109
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    move-result-object p1

    .line 113
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string p2, ", but onConfigurationChanged is called from different thread:"

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    const-string p2, ", so this onConfigurationChanged call should be ignore"

    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 143
    :cond_8e
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_9f

    .line 149
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 151
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 154
    move-result-object p1

    .line 155
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 157
    invoke-virtual {p1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 160
    :cond_9f
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 162
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_dc

    .line 172
    if-eqz v2, :cond_c9

    .line 174
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    move-result-object p1

    .line 180
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width:I

    .line 182
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 185
    move-result p1

    .line 186
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidth:I

    .line 188
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    move-result-object p1

    .line 194
    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width_land:I

    .line 196
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 199
    move-result p1

    .line 200
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    .line 202
    :cond_c9
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 205
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_d6

    .line 211
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateWindowCutoutMode()V

    .line 214
    goto :goto_d9

    .line 215
    :cond_d6
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupNonImmersiveWindow()V

    .line 218
    :goto_d9
    invoke-direct {p0, v0, p2, p3, v1}, Lmiuix/appcompat/app/AlertController;->setupView(ZZZF)V

    .line 221
    :cond_dc
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_fc

    .line 227
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 229
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 232
    move-result-object p1

    .line 233
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 235
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 238
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 240
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 247
    move-result-object p1

    .line 248
    if-eqz p1, :cond_fc

    .line 250
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    .line 253
    :cond_fc
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 255
    new-instance p2, Lmiuix/appcompat/app/AlertController$9;

    .line 257
    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertController$9;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 260
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 5

    .line 1
    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_19

    .line 7
    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Landroid/view/View;

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    const/4 v1, 0x1

    .line 16
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 18
    aput-object v3, v0, v1

    .line 20
    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 23
    invoke-direct {p0, v2}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    .line 26
    :cond_19
    return-void
.end method

.method public onStart()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_43

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 9
    if-eqz v0, :cond_e

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    .line 15
    :cond_e
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 18
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateWindowCutoutMode()V

    .line 21
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFromRebuild:Z

    .line 23
    if-nez v0, :cond_2a

    .line 25
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 27
    if-eqz v0, :cond_2a

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 31
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 33
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isLandscape()Z

    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 39
    invoke-static {v0, v1, v2, v3}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 42
    goto :goto_38

    .line 43
    :cond_2a
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 51
    const v1, 0x3e99999a  # 0.3f

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 57
    :goto_38
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 59
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 68
    :cond_43
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 18
    :cond_11
    return-void
.end method

.method public replaceView(IZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->clearCustomContent()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 3
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lmiuix/appcompat/app/AlertController;->onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V

    return-void
.end method

.method public replaceView(Landroid/view/View;Z)V
    .registers 4

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->clearCustomContent()V

    .line 6
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lmiuix/appcompat/app/AlertController;->onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 5

    .line 1
    if-nez p4, :cond_a

    .line 3
    if-eqz p3, :cond_a

    .line 5
    iget-object p4, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    move-result-object p4

    .line 11
    :cond_a
    const/4 p3, -0x3

    .line 12
    if-eq p1, p3, :cond_25

    .line 14
    const/4 p3, -0x2

    .line 15
    if-eq p1, p3, :cond_20

    .line 17
    const/4 p3, -0x1

    .line 18
    if-ne p1, p3, :cond_18

    .line 20
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 22
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 24
    goto :goto_29

    .line 25
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string p2, "Button does not exist"

    .line 29
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1

    .line 33
    :cond_20
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 35
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 37
    goto :goto_29

    .line 38
    :cond_25
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 40
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 42
    :goto_29
    return-void
.end method

.method public setCancelable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    .line 3
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    .line 3
    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    .line 3
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 5
    return-void
.end method

.method public setComment(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mComment:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_9
    return-void
.end method

.method public setCustomPanelSize(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 3
    if-eqz v0, :cond_29

    .line 5
    if-eqz p1, :cond_29

    .line 7
    new-instance v1, Lmiuix/appcompat/app/b;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, p0, p1}, Lmiuix/appcompat/app/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_28

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 27
    move-result-object v0

    .line 28
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 32
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 36
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    :cond_28
    return-void

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string v0, "mParentPanel or layoutParams is null"

    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 3
    return-void
.end method

.method public setEnableEnterAnim(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 3
    return-void
.end method

.method public setEnableImmersive(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    .line 3
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    return-void
.end method

.method public setIconSize(II)V
    .registers 3

    .line 1
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    .line 3
    iput p2, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    .line 5
    return-void
.end method

.method public setLayoutReloadListener(Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mLayoutReloadListener:Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;

    .line 3
    return-void
.end method

.method public setLiteVersion(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mLiteVersion:I

    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_9
    return-void
.end method

.method public setNonImmersiveDialogHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    .line 3
    return-void
.end method

.method public setPanelSizeChangedListener(Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

    .line 3
    return-void
.end method

.method public setPreferLandscape(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    .line 3
    return-void
.end method

.method public setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_9
    return-void
.end method

.method public setUseSmallIcon(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mSmallIcon:Z

    .line 3
    return-void
.end method

.method public setView(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 2
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    return-void
.end method
