.class Lcom/android/fileexplorer/fragment/MoreAppFragment$1;
.super Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;
.source "MoreAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/MoreAppFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/MoreAppFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 7

    .line 1
    const-string p1, "setOnItemClickListener position = "

    .line 3
    const-string p3, "MoreAppFragment"

    .line 5
    invoke-static {p1, p2, p3}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->access$000(Lcom/android/fileexplorer/fragment/MoreAppFragment;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    move-result p1

    .line 18
    if-gt p1, p2, :cond_30

    .line 20
    const-string p1, "onItemClick indexOutOfBounds, index = "

    .line 22
    const-string p4, ", size = "

    .line 24
    invoke-static {p1, p2, p4}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    .line 30
    invoke-static {p2}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->access$000(Lcom/android/fileexplorer/fragment/MoreAppFragment;)Ljava/util/List;

    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 37
    move-result p2

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-static {p3, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 49
    :cond_30
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    .line 51
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->access$000(Lcom/android/fileexplorer/fragment/MoreAppFragment;)Ljava/util/List;

    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 61
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    const-string p3, "com.android.fileexplorer.zip"

    .line 67
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    move-result p3

    .line 71
    const/4 p4, -0x1

    .line 72
    const-string v0, "name"

    .line 74
    const-string v1, "click_more"

    .line 76
    if-eqz p3, :cond_59

    .line 78
    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 80
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 83
    move-result p2

    .line 84
    const-string p3, "archive"

    .line 86
    invoke-static {v1, v0, p3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    goto :goto_c0

    .line 90
    :cond_59
    const-string p3, "com.android.fileexplorer.apk"

    .line 92
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 95
    move-result p3

    .line 96
    if-eqz p3, :cond_6d

    .line 98
    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 100
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 103
    move-result p2

    .line 104
    const-string p3, "apk"

    .line 106
    invoke-static {v1, v0, p3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    goto :goto_c0

    .line 110
    :cond_6d
    const-string p3, "com.xlredapple.bluetooth"

    .line 112
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 115
    move-result p3

    .line 116
    if-eqz p3, :cond_81

    .line 118
    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Bluetooth:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 120
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 123
    move-result p2

    .line 124
    const-string p3, "bluetooth"

    .line 126
    invoke-static {v1, v0, p3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    goto :goto_c0

    .line 130
    :cond_81
    const-string p3, "com.android.fileexplorer.fav"

    .line 132
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 135
    move-result p3

    .line 136
    if-eqz p3, :cond_90

    .line 138
    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 140
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 143
    move-result p2

    .line 144
    goto :goto_c0

    .line 145
    :cond_90
    const-string p3, "com.android.fileexplorer.file"

    .line 147
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 150
    move-result p3

    .line 151
    if-eqz p3, :cond_a4

    .line 153
    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 155
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 158
    move-result p2

    .line 159
    const-string p3, "mi_share"

    .line 161
    invoke-static {v1, v0, p3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    goto :goto_c0

    .line 165
    :cond_a4
    const-string p3, "com.tencent.mm"

    .line 167
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 170
    move-result p3

    .line 171
    if-eqz p3, :cond_b2

    .line 173
    const-string p2, "wechat"

    .line 175
    invoke-static {v1, v0, p2}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    goto :goto_bf

    .line 179
    :cond_b2
    const-string p3, "com.tencent.mobileqq"

    .line 181
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 184
    move-result p2

    .line 185
    if-eqz p2, :cond_bf

    .line 187
    const-string p2, "qq"

    .line 189
    invoke-static {v1, v0, p2}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    :cond_bf
    :goto_bf
    move p2, p4

    .line 193
    :goto_c0
    if-eq p4, p2, :cond_c8

    .line 195
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    .line 197
    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->access$100(Lcom/android/fileexplorer/fragment/MoreAppFragment;I)V

    .line 200
    goto :goto_d7

    .line 201
    :cond_c8
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    .line 203
    iget-object p2, p2, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 205
    const/4 p3, 0x0

    .line 206
    invoke-static {p2, p1, p3}, Lcom/android/fileexplorer/activity/AppTagActivity;->startAppFileActivity(Landroid/content/Context;Lcom/android/fileexplorer/dao/file/AppTag;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 212
    move-result-object p1

    .line 213
    invoke-static {v1, v0, p1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    :goto_d7
    return-void
.end method
