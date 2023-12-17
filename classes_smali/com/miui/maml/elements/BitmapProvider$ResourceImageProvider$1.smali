.class Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;
.super Ljava/lang/Object;
.source "BitmapProvider.java"

# interfaces
.implements Lcom/miui/maml/ResourceManager$AsyncLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLoadComplete(Ljava/lang/String;Lcom/miui/maml/ResourceManager$BitmapInfo;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 3
    iget-object v0, v0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 8
    iget-object v1, v1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 10
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_4b

    .line 16
    const-string v1, "BitmapProvider"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v3, "load image async complete: "

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v3, " last cached "

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 38
    invoke-static {v3}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->access$100(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 54
    iget-object v1, v1, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 56
    const/4 v2, 0x0

    .line 57
    if-nez p2, :cond_3c

    .line 59
    move-object p2, v2

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    iget-object p2, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    :goto_3e
    invoke-virtual {v1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 66
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 68
    invoke-static {p2, p1}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->access$102(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 73
    iput-object v2, p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 75
    goto :goto_6d

    .line 76
    :cond_4b
    const-string p2, "BitmapProvider"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v2, "load image async complete: "

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string p1, " not equals "

    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 98
    iget-object p1, p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_5 .. :try_end_6e} :catchall_76

    .line 111
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 113
    iget-object p1, p1, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 115
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 118
    return-void

    .line 119
    :catchall_76
    move-exception p1

    .line 120
    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    .line 121
    throw p1
.end method
