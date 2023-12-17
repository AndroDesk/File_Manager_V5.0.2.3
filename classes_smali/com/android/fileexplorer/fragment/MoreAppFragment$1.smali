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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/MoreAppFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/listener/SimpleItemActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 7

    const-string p1, "setOnItemClickListener position = "

    const-string p3, "MoreAppFragment"

    invoke-static {p1, p2, p3}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->access$000(Lcom/android/fileexplorer/fragment/MoreAppFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, p2, :cond_30

    const-string p1, "onItemClick indexOutOfBounds, index = "

    const-string p4, ", size = "

    invoke-static {p1, p2, p4}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->access$000(Lcom/android/fileexplorer/fragment/MoreAppFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->access$000(Lcom/android/fileexplorer/fragment/MoreAppFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.fileexplorer.zip"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, -0x1

    const-string v0, "name"

    const-string v1, "click_more"

    if-eqz p3, :cond_59

    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string p3, "archive"

    invoke-static {v1, v0, p3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c0

    :cond_59
    const-string p3, "com.android.fileexplorer.apk"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6d

    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string p3, "apk"

    invoke-static {v1, v0, p3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c0

    :cond_6d
    const-string p3, "com.xlredapple.bluetooth"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_81

    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Bluetooth:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string p3, "bluetooth"

    invoke-static {v1, v0, p3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c0

    :cond_81
    const-string p3, "com.android.fileexplorer.fav"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_90

    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    goto :goto_c0

    :cond_90
    const-string p3, "com.android.fileexplorer.file"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_a4

    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string p3, "mi_share"

    invoke-static {v1, v0, p3}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c0

    :cond_a4
    const-string p3, "com.tencent.mm"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_b2

    const-string p2, "wechat"

    invoke-static {v1, v0, p2}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_bf

    :cond_b2
    const-string p3, "com.tencent.mobileqq"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_bf

    const-string p2, "qq"

    invoke-static {v1, v0, p2}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_bf
    :goto_bf
    move p2, p4

    :goto_c0
    if-eq p4, p2, :cond_c8

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/MoreAppFragment;->access$100(Lcom/android/fileexplorer/fragment/MoreAppFragment;I)V

    goto :goto_d7

    :cond_c8
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/MoreAppFragment$1;->this$0:Lcom/android/fileexplorer/fragment/MoreAppFragment;

    iget-object p2, p2, Lcom/android/fileexplorer/fragment/AbsMoreAppFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/android/fileexplorer/activity/AppTagActivity;->startAppFileActivity(Landroid/content/Context;Lcom/android/fileexplorer/dao/file/AppTag;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_d7
    return-void
.end method
