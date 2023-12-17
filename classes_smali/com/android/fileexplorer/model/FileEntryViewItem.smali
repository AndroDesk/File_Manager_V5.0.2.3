.class public Lcom/android/fileexplorer/model/FileEntryViewItem;
.super Lcom/android/fileexplorer/model/category/BaseItem;
.source "FileEntryViewItem.java"


# instance fields
.field private mArrowRightIv:Landroid/widget/ImageView;

.field private mFileNameFtv:Landroid/widget/TextView;

.field private mFileSizeTv:Landroid/widget/TextView;

.field private mIconIv:Landroid/widget/ImageView;

.field private mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/category/BaseItem;-><init>(Landroid/view/View;)V

    .line 4
    iput-object p2, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 6
    const p2, 0x7f0a0185

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroid/widget/ImageView;

    .line 15
    iput-object p2, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    .line 17
    const p2, 0x7f0a018a

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/widget/TextView;

    .line 26
    iput-object p2, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    .line 28
    const p2, 0x7f0a0186

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/widget/TextView;

    .line 37
    iput-object p2, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileNameFtv:Landroid/widget/TextView;

    .line 39
    const p2, 0x7f0a032d

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lmiuix/androidbasewidget/widget/CircleProgressBar;

    .line 48
    iput-object p2, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    .line 50
    const p2, 0x7f0a01db

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/widget/ImageView;

    .line 59
    iput-object p2, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mArrowRightIv:Landroid/widget/ImageView;

    .line 61
    iget-object p2, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 63
    if-eqz p2, :cond_43

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_43
    return-void
.end method

.method public static newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Lcom/android/fileexplorer/model/FileEntryViewItem;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/FileEntryViewItem;

    .line 3
    const v1, 0x7f0d006d

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p0, v1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/model/FileEntryViewItem;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 14
    return-object v0
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/model/FileEntryEntity;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileNameFtv:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    .line 23
    move-result v1

    .line 24
    const/16 v2, 0x8

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v1, :cond_49

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 35
    const v4, 0x7f0701ed

    .line 38
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    .line 47
    iget p1, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->icon:I

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mArrowRightIv:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    goto/16 :goto_12e

    .line 74
    :cond_49
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 77
    move-result v1

    .line 78
    const-string v4, "/"

    .line 80
    const v5, 0x7f0701ee

    .line 83
    if-eqz v1, :cond_e8

    .line 85
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 94
    move-result v5

    .line 95
    invoke-virtual {v1, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 98
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    .line 100
    const/4 v5, 0x1

    .line 101
    new-array v6, v5, [I

    .line 103
    const v7, 0x7f080629

    .line 106
    aput v7, v6, v3

    .line 108
    new-array v7, v5, [I

    .line 110
    const v8, 0x7f08062a

    .line 113
    aput v8, v7, v3

    .line 115
    const/4 v8, 0x0

    .line 116
    invoke-virtual {v1, v6, v7, v8}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setDrawablesForLevels([I[I[I)V

    .line 119
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    .line 121
    const/16 v6, 0x64

    .line 123
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 126
    iget-wide v6, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->fileSize:J

    .line 128
    iget-wide v8, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->availableSize:J

    .line 130
    sub-long v8, v6, v8

    .line 132
    long-to-float v1, v8

    .line 133
    const/high16 v8, 0x42c80000  # 100.0f

    .line 135
    mul-float/2addr v1, v8

    .line 136
    long-to-float v6, v6

    .line 137
    div-float/2addr v1, v6

    .line 138
    float-to-int v1, v1

    .line 139
    iget-object v6, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    .line 141
    invoke-virtual {v6, v1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setProgress(I)V

    .line 144
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    .line 146
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    .line 151
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-wide v6, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->fileSize:J

    .line 156
    iget-wide v8, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->availableSize:J

    .line 158
    sub-long/2addr v6, v8

    .line 159
    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-wide v6, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->fileSize:J

    .line 171
    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "  "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    .line 185
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    move-result-object v1

    .line 193
    const v4, 0x7f11038c

    .line 196
    new-array v5, v5, [Ljava/lang/Object;

    .line 198
    iget-wide v6, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->availableSize:J

    .line 200
    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 203
    move-result-object p1

    .line 204
    aput-object p1, v5, v3

    .line 206
    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    .line 224
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mArrowRightIv:Landroid/widget/ImageView;

    .line 229
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    goto :goto_12e

    .line 233
    :cond_e8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 235
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 238
    move-result-object v6

    .line 239
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 242
    move-result v5

    .line 243
    invoke-virtual {v1, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 246
    iget-wide v5, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->availableSize:J

    .line 248
    invoke-static {v5, v6}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-wide v4, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->fileSize:J

    .line 260
    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    .line 269
    iget p1, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->icon:I

    .line 271
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    .line 276
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    .line 281
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    .line 295
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mArrowRightIv:Landroid/widget/ImageView;

    .line 300
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :goto_12e
    return-void
.end method
