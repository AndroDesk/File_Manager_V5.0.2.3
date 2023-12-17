.class abstract Leu/medsea/mimeutil/detector/FileWatcher;
.super Ljava/util/TimerTask;
.source "OpendesktopMimeDetector.java"


# instance fields
.field private file:Ljava/io/File;

.field private timeStamp:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    iput-object p1, p0, Leu/medsea/mimeutil/detector/FileWatcher;->file:Ljava/io/File;

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Leu/medsea/mimeutil/detector/FileWatcher;->timeStamp:J

    .line 12
    return-void
.end method


# virtual methods
.method public abstract onChange(Ljava/io/File;)V
.end method

.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Leu/medsea/mimeutil/detector/FileWatcher;->file:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Leu/medsea/mimeutil/detector/FileWatcher;->timeStamp:J

    .line 9
    cmp-long v2, v2, v0

    .line 11
    if-eqz v2, :cond_13

    .line 13
    iput-wide v0, p0, Leu/medsea/mimeutil/detector/FileWatcher;->timeStamp:J

    .line 15
    iget-object v0, p0, Leu/medsea/mimeutil/detector/FileWatcher;->file:Ljava/io/File;

    .line 17
    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/FileWatcher;->onChange(Ljava/io/File;)V

    .line 20
    :cond_13
    return-void
.end method
