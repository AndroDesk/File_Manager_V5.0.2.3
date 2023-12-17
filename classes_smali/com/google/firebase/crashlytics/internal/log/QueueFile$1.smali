.class Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/log/QueueFile;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public first:Z

.field public final synthetic this$0:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

.field public final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/log/QueueFile;Ljava/lang/StringBuilder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->this$0:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->first:Z

    .line 11
    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;I)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->first:Z

    .line 3
    if-eqz p1, :cond_8

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->first:Z

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    .line 11
    const-string v0, ", "

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :goto_f
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    return-void
.end method
