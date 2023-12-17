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

    new-instance v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    const-string v1, "Other"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->Other:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    new-instance v1, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    const-string v3, "AppDirectoryId"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->AppDirectoryId:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    new-instance v3, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    const-string v5, "AppDirectory"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->AppDirectory:Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->$VALUES:[Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->$VALUES:[Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/apptag/FileConstant$ScanCategory;

    return-object v0
.end method
