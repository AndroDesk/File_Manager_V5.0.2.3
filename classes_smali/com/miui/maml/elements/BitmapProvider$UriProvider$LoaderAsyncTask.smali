.class Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider$UriProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoaderAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mHeight:I

.field private mUri:Ljava/lang/String;

.field private mWidth:I

.field public final synthetic this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;II)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mWidth:I

    .line 10
    iput p4, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mHeight:I

    .line 12
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 5

    .line 2
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mWidth:I

    iget v2, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mHeight:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/maml/elements/BitmapProvider;->getBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_26

    const-string v0, "BitmapProvider"

    const-string v1, "fail to decode bitmap: "

    .line 3
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_26
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    invoke-static {v0}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->access$200(Lcom/miui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6
    :try_start_2d
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    invoke-static {v2}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->access$300(Lcom/miui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    iget-object v1, v1, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 8
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    invoke-static {v1}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->access$300(Lcom/miui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->access$402(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    iget-object v1, v1, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 10
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;->access$302(Lcom/miui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    :cond_58
    monitor-exit v0

    return-object p1

    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_2d .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
