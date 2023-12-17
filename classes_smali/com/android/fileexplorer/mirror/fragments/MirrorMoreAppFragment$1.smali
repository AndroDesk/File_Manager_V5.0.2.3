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
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;III)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->access$000()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p3, "setOnItemClickListener position = "

    .line 7
    invoke-static {p3, p2, p1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    move-result p1

    .line 20
    if-gt p1, p2, :cond_36

    .line 22
    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->access$000()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string p3, "onItemClick indexOutOfBounds, index = "

    .line 28
    const-string p4, ", size = "

    .line 30
    invoke-static {p3, p2, p4}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object p2

    .line 34
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    .line 36
    invoke-static {p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)Ljava/util/List;

    .line 39
    move-result-object p3

    .line 40
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 43
    move-result p3

    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 51
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 55
    :cond_36
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    .line 57
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;)Ljava/util/List;

    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 67
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    const-string p3, "com.android.fileexplorer.zip"

    .line 73
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 76
    move-result p3

    .line 77
    const/4 p4, -0x1

    .line 78
    if-eqz p3, :cond_56

    .line 80
    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 82
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 85
    move-result p2

    .line 86
    goto :goto_a3

    .line 87
    :cond_56
    const-string p3, "com.android.fileexplorer.apk"

    .line 89
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 92
    move-result p3

    .line 93
    if-eqz p3, :cond_65

    .line 95
    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 97
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 100
    move-result p2

    .line 101
    goto :goto_a3

    .line 102
    :cond_65
    const-string p3, "com.xlredapple.bluetooth"

    .line 104
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 107
    move-result p3

    .line 108
    if-eqz p3, :cond_74

    .line 110
    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Bluetooth:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 112
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 115
    move-result p2

    .line 116
    goto :goto_a3

    .line 117
    :cond_74
    const-string p3, "com.android.fileexplorer.fav"

    .line 119
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_83

    .line 125
    sget-object p2, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 127
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 130
    move-result p2

    .line 131
    goto :goto_a3

    .line 132
    :cond_83
    const-string p3, "com.tencent.mm"

    .line 134
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 137
    move-result p3

    .line 138
    const-string v0, "name"

    .line 140
    const-string v1, "click_more"

    .line 142
    if-eqz p3, :cond_95

    .line 144
    const-string p2, "wechat"

    .line 146
    invoke-static {v1, v0, p2}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    goto :goto_a2

    .line 150
    :cond_95
    const-string p3, "com.tencent.mobileqq"

    .line 152
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_a2

    .line 158
    const-string p2, "qq"

    .line 160
    invoke-static {v1, v0, p2}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    :cond_a2
    :goto_a2
    move p2, p4

    .line 164
    :goto_a3
    if-eq p4, p2, :cond_ad

    .line 166
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    .line 168
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 170
    invoke-static {p1, p2}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseFileCategory(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;I)V

    .line 173
    goto :goto_b4

    .line 174
    :cond_ad
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;

    .line 176
    iget-object p2, p2, Lcom/android/fileexplorer/mirror/fragments/MirrorMoreAppFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 178
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseAppFile(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Lcom/android/fileexplorer/dao/file/AppTag;)V

    .line 181
    :goto_b4
    return-void
.end method
