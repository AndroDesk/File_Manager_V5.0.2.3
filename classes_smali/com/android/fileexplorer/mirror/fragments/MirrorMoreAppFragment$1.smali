.class Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;
.super Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;
.source "MirrorMoreAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 7

    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p3, "setOnItemClickListener position = "

    invoke-static {p3, p2, p1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, p2, :cond_36

    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p3, "onItemClick indexOutOfBounds, index = "

    const-string p4, ", size = "

    invoke-static {p3, p2, p4}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    invoke-static {p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)Ljava/util/List;

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

    if-eqz p3, :cond_56

    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    goto :goto_a3

    :cond_56
    const-string p3, "com.android.fileexplorer.apk"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_65

    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    goto :goto_a3

    :cond_65
    const-string p3, "com.xlredapple.bluetooth"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_74

    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Bluetooth:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    goto :goto_a3

    :cond_74
    const-string p3, "com.android.fileexplorer.fav"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_83

    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    goto :goto_a3

    :cond_83
    const-string p3, "com.tencent.mm"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v0, "name"

    const-string v1, "click_more"

    if-eqz p3, :cond_95

    const-string p2, "wechat"

    invoke-static {v1, v0, p2}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a2

    :cond_95
    const-string p3, "com.tencent.mobileqq"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a2

    const-string p2, "qq"

    invoke-static {v1, v0, p2}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a2
    :goto_a2
    move p2, p4

    :goto_a3
    if-eq p4, p2, :cond_ad

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseFileCategory(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;I)V

    goto :goto_b4

    :cond_ad
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    iget-object p2, p2, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-static {p2, p1}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseAppFile(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Lcom/android/fileexplorer/dao/file/AppTag;)V

    :goto_b4
    return-void
.end method
