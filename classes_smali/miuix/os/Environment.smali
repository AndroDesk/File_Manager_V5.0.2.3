.class public Lmiuix/os/Environment;
.super Landroid/os/Environment;
.source "Environment.java"


# static fields
.field private static EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File; = null

.field private static final MIUI_APP_DIRECTORY:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

.field private static final MIUI_DATA_DIRECTORY:Ljava/io/File;

.field private static final MIUI_DIRECTORY_NAME:Ljava/lang/String; = "MIUI"

.field private static final MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

.field private static sCpuCount:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/data/miui/"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lmiuix/os/Environment;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    .line 10
    new-instance v0, Ljava/io/File;

    .line 12
    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "apps"

    .line 18
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    sput-object v0, Lmiuix/os/Environment;->MIUI_APP_DIRECTORY:Ljava/io/File;

    .line 23
    new-instance v0, Ljava/io/File;

    .line 25
    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "preset_apps"

    .line 31
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    sput-object v0, Lmiuix/os/Environment;->MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/io/File;

    .line 38
    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    .line 41
    move-result-object v1

    .line 42
    const-string v2, "current"

    .line 44
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    sput-object v0, Lmiuix/os/Environment;->MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

    .line 49
    const/4 v0, 0x0

    .line 50
    sput v0, Lmiuix/os/Environment;->sCpuCount:I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/InstantiationException;

    .line 6
    const-string v1, "Cannot instantiate utility class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static getCpuCount()I
    .registers 6

    .line 1
    sget v0, Lmiuix/os/Environment;->sCpuCount:I

    .line 3
    if-nez v0, :cond_2d

    .line 5
    const-string v0, "cpu[0-9]*"

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/io/File;

    .line 13
    const-string v2, "/sys/devices/system/cpu/"

    .line 15
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    array-length v2, v1

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_18
    if-ge v3, v2, :cond_2b

    .line 27
    aget-object v5, v1, v3

    .line 29
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_28

    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 41
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_18

    .line 44
    :cond_2b
    sput v4, Lmiuix/os/Environment;->sCpuCount:I

    .line 46
    :cond_2d
    sget v0, Lmiuix/os/Environment;->sCpuCount:I

    .line 48
    return v0
.end method

.method public static getExternalStorageMiuiDirectory()Ljava/io/File;
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    .line 3
    if-nez v0, :cond_11

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "MIUI"

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    sput-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_2b

    .line 18
    :cond_11
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_28

    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_28

    .line 36
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 41
    :cond_28
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    .line 43
    return-object v0

    .line 44
    :catch_2b
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    const/4 v0, 0x0

    .line 49
    return-object v0
.end method

.method public static getMiuiAppDirectory()Ljava/io/File;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/os/Environment;->MIUI_APP_DIRECTORY:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public static getMiuiCustomizedDirectory()Ljava/io/File;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/os/Environment;->MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public static getMiuiDataDirectory()Ljava/io/File;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/os/Environment;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public static getMiuiPresetAppDirectory()Ljava/io/File;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/os/Environment;->MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public static isExternalStorageMounted()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mounted"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method
