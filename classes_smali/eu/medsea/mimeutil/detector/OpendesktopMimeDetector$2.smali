.class Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$2;
.super Ljava/lang/Object;
.source "OpendesktopMimeDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$2;->this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    iget p1, p1, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->weight:I

    check-cast p2, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;

    iget p2, p2, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->weight:I

    sub-int/2addr p1, p2

    return p1
.end method
