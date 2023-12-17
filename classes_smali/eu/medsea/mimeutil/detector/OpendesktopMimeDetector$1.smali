.class Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$1;
.super Leu/medsea/mimeutil/detector/FileWatcher;
.source "OpendesktopMimeDetector.java"


# instance fields
.field public final synthetic this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;


# direct methods
.method public constructor <init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;Ljava/io/File;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Leu/medsea/mimeutil/detector/FileWatcher;-><init>(Ljava/io/File;)V

    .line 4
    iput-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$1;->this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;

    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Ljava/io/File;)V
    .registers 2

    .line 1
    iget-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$1;->this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;

    .line 3
    invoke-static {p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->access$0(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;)V

    .line 6
    return-void
.end method
