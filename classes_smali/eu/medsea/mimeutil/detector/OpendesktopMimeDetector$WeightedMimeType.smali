.class Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;
.super Leu/medsea/mimeutil/MimeType;
.source "OpendesktopMimeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeightedMimeType"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public pattern:Ljava/lang/String;

.field public final synthetic this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;

.field public weight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p2}, Leu/medsea/mimeutil/MimeType;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->this$0:Leu/medsea/mimeutil/detector/OpendesktopMimeDetector;

    iput-object p3, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->pattern:Ljava/lang/String;

    iput p4, p0, Leu/medsea/mimeutil/detector/OpendesktopMimeDetector$WeightedMimeType;->weight:I

    return-void
.end method
