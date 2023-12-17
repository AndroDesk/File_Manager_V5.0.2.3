.class Lcom/xiaomi/onetrack/CrashAnalysis$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/CrashAnalysis;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/CrashAnalysis;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$2;->a:Lcom/xiaomi/onetrack/CrashAnalysis;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 5

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/onetrack/CrashAnalysis$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
