.class Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$1;
.super Leu/medsea/mimeutil/detector/FileWatcher;
.source "OpendesktopMimeDetector.java"


# instance fields
.field public final synthetic this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0, p2}, Leu/medsea/mimeutil/detector/FileWatcher;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$1;->this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;

    return-void
.end method


# virtual methods
.method public onChange(Ljava/io/File;)V
    .registers 2

    iget-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$1;->this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;

    invoke-static {p1}, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;->access$0(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;)V

    return-void
.end method
