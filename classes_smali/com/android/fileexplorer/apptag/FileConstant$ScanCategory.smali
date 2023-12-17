.class final enum Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;
.super Ljava/lang/Enum;
.source "FileConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/FileConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

.field public static final enum AppDirectory:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

.field public static final enum AppDirectoryId:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

.field public static final enum Other:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 3
    const-string v1, "Other"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->Other:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 11
    new-instance v1, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 13
    const-string v3, "AppDirectoryId"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->AppDirectoryId:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 21
    new-instance v3, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 23
    const-string v5, "AppDirectory"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->AppDirectory:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 34
    aput-object v0, v5, v2

    .line 36
    aput-object v1, v5, v4

    .line 38
    aput-object v3, v5, v6

    .line 40
    sput-object v5, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->$VALUES:[Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->$VALUES:[Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 3
    invoke-virtual {v0}, [Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    .line 9
    return-object v0
.end method
