.class public final enum Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
.super Ljava/lang/Enum;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/progress/ProgressMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/progress/ProgressMonitor$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final enum ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final enum SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final enum WORK_IN_PROGRESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final synthetic a:[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 3
    const-string v1, "SUCCESS"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 11
    new-instance v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 13
    const-string v3, "WORK_IN_PROGRESS"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->WORK_IN_PROGRESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 21
    new-instance v3, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 23
    const-string v5, "ERROR"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 31
    new-instance v5, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 33
    const-string v7, "CANCELLED"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 44
    aput-object v0, v7, v2

    .line 46
    aput-object v1, v7, v4

    .line 48
    aput-object v3, v7, v6

    .line 50
    aput-object v5, v7, v8

    .line 52
    sput-object v7, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->a:[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
    .registers 2

    .line 1
    const-class v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
    .registers 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->a:[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 3
    invoke-virtual {v0}, [Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 9
    return-object v0
.end method
