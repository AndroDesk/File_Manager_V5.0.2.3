.class public final synthetic Lcom/android/fileexplorer/mirror/fragments/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;Landroidx/recyclerview/widget/RecyclerView;ILcom/android/fileexplorer/model/FileInfo;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/a;->d:Ljava/lang/Object;

    iput p3, p0, Lcom/android/fileexplorer/mirror/fragments/a;->b:I

    iput-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILcom/android/fileexplorer/util/CollectionUtils$Task;Ljava/util/concurrent/CountDownLatch;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/mirror/fragments/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/a;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/android/fileexplorer/mirror/fragments/a;->b:I

    iput-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/a;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_18

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/a;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p0, Lcom/android/fileexplorer/mirror/fragments/a;->b:I

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/a;->e:Ljava/lang/Object;

    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->b(Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;Landroidx/recyclerview/widget/RecyclerView;ILcom/android/fileexplorer/model/FileInfo;)V

    return-void

    :goto_18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/a;->b:I

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/android/fileexplorer/util/CollectionUtils$Task;

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/a;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/util/CollectionUtils;->a(Ljava/util/List;ILcom/android/fileexplorer/util/CollectionUtils$Task;Ljava/util/concurrent/CountDownLatch;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
