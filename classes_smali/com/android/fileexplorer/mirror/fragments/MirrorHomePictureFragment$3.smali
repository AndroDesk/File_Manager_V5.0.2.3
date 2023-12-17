.class Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$3;
.super Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;
.source "MirrorHomePictureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$3;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 6
    return-void
.end method
