.class Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$2;
.super Ljava/lang/Object;
.source "OpendesktopMimeDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;


# direct methods
.method public constructor <init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$2;->this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;

    .line 6
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    .line 3
    iget p1, p1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->weight:I

    .line 5
    check-cast p2, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    .line 7
    iget p2, p2, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->weight:I

    .line 9
    sub-int/2addr p1, p2

    .line 10
    return p1
.end method
