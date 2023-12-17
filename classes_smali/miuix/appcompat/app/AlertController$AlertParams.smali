.class Lmiuix/appcompat/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public iconHeight:I

.field public iconWidth:I

.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckBoxMessage:Ljava/lang/CharSequence;

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public mComment:Ljava/lang/CharSequence;

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mEnableDialogImmersive:Z

.field public mEnableEnterAnim:Z

.field public mExtraButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/AlertController$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mHapticFeedbackEnabled:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsChecked:Z

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mLiteVersion:I

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mNonImmersiveDialogHeight:I

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDialogShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lmiuix/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field public mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mPreferLandscape:Z

.field public mSmallIcon:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 7
    iput v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 12
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 17
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    .line 20
    move-result v2

    .line 21
    xor-int/2addr v2, v1

    .line 22
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableDialogImmersive:Z

    .line 24
    const/4 v2, -0x2

    .line 25
    iput v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNonImmersiveDialogHeight:I

    .line 27
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersion()I

    .line 30
    move-result v2

    .line 31
    iput v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLiteVersion:I

    .line 33
    if-gez v2, :cond_24

    .line 35
    iput v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLiteVersion:I

    .line 37
    :cond_24
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableEnterAnim:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 46
    const-string v0, "layout_inflater"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/view/LayoutInflater;

    .line 54
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    return-void
.end method

.method private createListView(Lmiuix/appcompat/app/AlertController;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 3
    iget v1, p1, Lmiuix/appcompat/app/AlertController;->mListLayout:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    move-object v7, v0

    .line 11
    check-cast v7, Landroid/widget/ListView;

    .line 13
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 15
    const/4 v8, 0x1

    .line 16
    if-eqz v0, :cond_36

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 20
    if-nez v0, :cond_27

    .line 22
    new-instance v9, Lmiuix/appcompat/app/AlertController$AlertParams$1;

    .line 24
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 26
    iget v3, p1, Lmiuix/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 28
    const v4, 0x1020014

    .line 31
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 33
    move-object v0, v9

    .line 34
    move-object v1, p0

    .line 35
    move-object v6, v7

    .line 36
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/AlertController$AlertParams$1;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 39
    goto :goto_6d

    .line 40
    :cond_27
    new-instance v9, Lmiuix/appcompat/app/AlertController$AlertParams$2;

    .line 42
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 44
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 46
    const/4 v4, 0x0

    .line 47
    move-object v0, v9

    .line 48
    move-object v1, p0

    .line 49
    move-object v5, v7

    .line 50
    move-object v6, p1

    .line 51
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/AlertController$AlertParams$2;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lmiuix/appcompat/app/AlertController;)V

    .line 54
    goto :goto_6d

    .line 55
    :cond_36
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 57
    if-eqz v0, :cond_3d

    .line 59
    iget v0, p1, Lmiuix/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    iget v0, p1, Lmiuix/appcompat/app/AlertController;->mListItemLayout:I

    .line 64
    :goto_3f
    move v3, v0

    .line 65
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 67
    const v1, 0x1020014

    .line 70
    if-eqz v0, :cond_5f

    .line 72
    new-instance v9, Lmiuix/appcompat/app/AlertController$AlertParams$3;

    .line 74
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 76
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 78
    new-array v5, v8, [Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 82
    const/4 v6, 0x0

    .line 83
    aput-object v0, v5, v6

    .line 85
    new-array v10, v8, [I

    .line 87
    aput v1, v10, v6

    .line 89
    move-object v0, v9

    .line 90
    move-object v1, p0

    .line 91
    move-object v6, v10

    .line 92
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/AlertController$AlertParams$3;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 95
    goto :goto_6d

    .line 96
    :cond_5f
    iget-object v9, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 98
    if-eqz v9, :cond_64

    .line 100
    goto :goto_6d

    .line 101
    :cond_64
    new-instance v9, Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;

    .line 103
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 105
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 107
    invoke-direct {v9, v0, v3, v1, v2}, Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 110
    :goto_6d
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lmiuix/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

    .line 112
    if-eqz v0, :cond_74

    .line 114
    invoke-interface {v0, v7}, Lmiuix/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 117
    :cond_74
    iput-object v9, p1, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 119
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 121
    iput v0, p1, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    .line 123
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 125
    if-eqz v0, :cond_87

    .line 127
    new-instance v0, Lmiuix/appcompat/app/AlertController$AlertParams$4;

    .line 129
    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/app/AlertController$AlertParams$4;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Lmiuix/appcompat/app/AlertController;)V

    .line 132
    invoke-virtual {v7, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    goto :goto_93

    .line 136
    :cond_87
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 138
    if-eqz v0, :cond_93

    .line 140
    new-instance v0, Lmiuix/appcompat/app/AlertController$AlertParams$5;

    .line 142
    invoke-direct {v0, p0, v7, p1}, Lmiuix/appcompat/app/AlertController$AlertParams$5;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/widget/ListView;Lmiuix/appcompat/app/AlertController;)V

    .line 145
    invoke-virtual {v7, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    :cond_93
    :goto_93
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 150
    if-eqz v0, :cond_9a

    .line 152
    invoke-virtual {v7, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 155
    :cond_9a
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 157
    if-eqz v0, :cond_a2

    .line 159
    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 162
    goto :goto_aa

    .line 163
    :cond_a2
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 165
    if-eqz v0, :cond_aa

    .line 167
    const/4 v0, 0x2

    .line 168
    invoke-virtual {v7, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 171
    :cond_aa
    :goto_aa
    iput-object v7, p1, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 173
    return-void
.end method


# virtual methods
.method public apply(Lmiuix/appcompat/app/AlertController;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 8
    goto :goto_3b

    .line 9
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 18
    if-eqz v0, :cond_16

    .line 20
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_16
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setIcon(I)V

    .line 30
    :cond_1d
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    .line 32
    if-eqz v0, :cond_28

    .line 34
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->getIconAttributeResId(I)I

    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setIcon(I)V

    .line 41
    :cond_28
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mSmallIcon:Z

    .line 43
    if-eqz v0, :cond_30

    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setUseSmallIcon(Z)V

    .line 49
    :cond_30
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->iconWidth:I

    .line 51
    if-eqz v0, :cond_3b

    .line 53
    iget v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->iconHeight:I

    .line 55
    if-eqz v1, :cond_3b

    .line 57
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertController;->setIconSize(II)V

    .line 60
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 62
    if-eqz v0, :cond_42

    .line 64
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 67
    :cond_42
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mComment:Ljava/lang/CharSequence;

    .line 69
    if-eqz v0, :cond_49

    .line 71
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setComment(Ljava/lang/CharSequence;)V

    .line 74
    :cond_49
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 76
    const/4 v1, 0x0

    .line 77
    if-eqz v0, :cond_54

    .line 79
    const/4 v2, -0x1

    .line 80
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    invoke-virtual {p1, v2, v0, v3, v1}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 85
    :cond_54
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 87
    if-eqz v0, :cond_5e

    .line 89
    const/4 v2, -0x2

    .line 90
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    invoke-virtual {p1, v2, v0, v3, v1}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 95
    :cond_5e
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 97
    if-eqz v0, :cond_68

    .line 99
    const/4 v2, -0x3

    .line 100
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    invoke-virtual {p1, v2, v0, v3, v1}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 105
    :cond_68
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 107
    if-eqz v0, :cond_76

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    .line 111
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 113
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    invoke-static {p1, v0}, Lmiuix/appcompat/app/AlertController;->access$302(Lmiuix/appcompat/app/AlertController;Ljava/util/List;)Ljava/util/List;

    .line 119
    :cond_76
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 121
    if-nez v0, :cond_82

    .line 123
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 125
    if-nez v0, :cond_82

    .line 127
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 129
    if-eqz v0, :cond_85

    .line 131
    :cond_82
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController$AlertParams;->createListView(Lmiuix/appcompat/app/AlertController;)V

    .line 134
    :cond_85
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 136
    if-eqz v0, :cond_8d

    .line 138
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setView(Landroid/view/View;)V

    .line 141
    goto :goto_94

    .line 142
    :cond_8d
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 144
    if-eqz v0, :cond_94

    .line 146
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setView(I)V

    .line 149
    :cond_94
    :goto_94
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 151
    if-eqz v0, :cond_9d

    .line 153
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsChecked:Z

    .line 155
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertController;->setCheckBox(ZLjava/lang/CharSequence;)V

    .line 158
    :cond_9d
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mHapticFeedbackEnabled:Z

    .line 160
    iput-boolean v0, p1, Lmiuix/appcompat/app/AlertController;->mHapticFeedbackEnabled:Z

    .line 162
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableDialogImmersive:Z

    .line 164
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setEnableImmersive(Z)V

    .line 167
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNonImmersiveDialogHeight:I

    .line 169
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setNonImmersiveDialogHeight(I)V

    .line 172
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLiteVersion:I

    .line 174
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setLiteVersion(I)V

    .line 177
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPreferLandscape:Z

    .line 179
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setPreferLandscape(Z)V

    .line 182
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

    .line 184
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setPanelSizeChangedListener(Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;)V

    .line 187
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableEnterAnim:Z

    .line 189
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setEnableEnterAnim(Z)V

    .line 192
    return-void
.end method
