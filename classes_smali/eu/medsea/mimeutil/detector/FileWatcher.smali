.class abstract Leu/medsea/mimeutil/detector/FileWatcher;
.super Ljava/util/TimerTask;
.source "OpendesktopMimeDetector.java"


# instance fields
.field private file:Ljava/io/File;

.field private timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Leu/medsea/mimeutil/detector/FileWatcher;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Leu/medsea/mimeutil/detector/FileWatcher;->timeStamp:J

    return-void
.end method


# virtual methods
.method public abstract onChange(Ljava/io/File;)V
.end method

.method public final run()V
    .registers 5

    iget-object v0, p0, Leu/medsea/mimeutil/detector/FileWatcher;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-wide v2, p0, Leu/medsea/mimeutil/detector/FileWatcher;->timeStamp:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_13

    iput-wide v0, p0, Leu/medsea/mimeutil/detector/FileWatcher;->timeStamp:J

    iget-object v0, p0, Leu/medsea/mimeutil/detector/FileWatcher;->file:Ljava/io/File;

    invoke-virtual {p0, v0}, Leu/medsea/mimeutil/detector/FileWatcher;->onChange(Ljava/io/File;)V

    :cond_13
    return-void
.end method
