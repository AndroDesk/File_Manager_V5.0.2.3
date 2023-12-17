.class public Lcom/android/fileexplorer/view/PrivateListItem;
.super Landroid/widget/FrameLayout;
.source "PrivateListItem.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mFileImageView:Landroid/widget/ImageView;

.field private mFileNameTextView:Landroid/widget/TextView;

.field private mFileOwnerTextView:Landroid/widget/TextView;

.field private mFileSizeTextView:Landroid/widget/TextView;

.field private mIcoGoList:Landroid/widget/ImageView;

.field private mModifiedTimeTextView:Landroid/widget/TextView;

.field private mSeparator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;ZZ)V
    .registers 11

    .line 1
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p3, :cond_15

    .line 6
    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 8
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 13
    invoke-virtual {v2, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    goto :goto_28

    .line 22
    :cond_15
    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 24
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_24

    .line 35
    move v3, v1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v3, v0

    .line 38
    :goto_25
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    :goto_28
    invoke-virtual {p0, p4}, Landroid/view/View;->setSelected(Z)V

    .line 44
    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    .line 46
    const-string v2, ""

    .line 48
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 54
    move-result-object p4

    .line 55
    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p4

    .line 59
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_48

    .line 65
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 68
    move-result-object p4

    .line 69
    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p4

    .line 73
    :cond_48
    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileNameTextView:Landroid/widget/TextView;

    .line 75
    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p4

    .line 79
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mModifiedTimeTextView:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    .line 87
    move-result-wide v2

    .line 88
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatDateString(J)Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mSeparator:Landroid/view/View;

    .line 102
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 108
    move-result p4

    .line 109
    if-eqz p4, :cond_90

    .line 111
    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 116
    move-result-object p1

    .line 117
    const v2, 0x7f0f0014

    .line 120
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    .line 123
    move-result v3

    .line 124
    const/4 v4, 0x1

    .line 125
    new-array v4, v4, [Ljava/lang/Object;

    .line 127
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    .line 130
    move-result v5

    .line 131
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v5

    .line 135
    aput-object v5, v4, v1

    .line 137
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    goto :goto_9d

    .line 145
    :cond_90
    iget-object p1, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 147
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    .line 150
    move-result-wide v2

    .line 151
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 154
    move-result-object p4

    .line 155
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_9d
    iget-object p1, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileImageView:Landroid/widget/ImageView;

    .line 160
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSourcePath()Ljava/lang/String;

    .line 163
    move-result-object p4

    .line 164
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 170
    move-result-object p1

    .line 171
    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileImageView:Landroid/widget/ImageView;

    .line 173
    invoke-virtual {p1, p2, p4}, Lcom/android/fileexplorer/model/FileIconHelper;->setPrivateFileIcon(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/widget/ImageView;)V

    .line 176
    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_bd

    .line 182
    if-nez p3, :cond_c2

    .line 184
    iget-object p1, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 186
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    goto :goto_c2

    .line 190
    :cond_bd
    iget-object p1, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 192
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    :cond_c2
    :goto_c2
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0186

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileNameTextView:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f0a0187

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0a02a5

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mModifiedTimeTextView:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0a018a

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileSizeTextView:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0a0189

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mSeparator:Landroid/view/View;

    .line 57
    const v0, 0x7f0a0185

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/ImageView;

    .line 66
    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileImageView:Landroid/widget/ImageView;

    .line 68
    const v0, 0x1020001

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/CheckBox;

    .line 77
    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 79
    const v0, 0x7f0a01d4

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/ImageView;

    .line 88
    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mIcoGoList:Landroid/widget/ImageView;

    .line 90
    return-void
.end method
