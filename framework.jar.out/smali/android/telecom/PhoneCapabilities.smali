.class public final Landroid/telecom/PhoneCapabilities;
.super Ljava/lang/Object;
.source "PhoneCapabilities.java"


# static fields
.field public static final ADD_PARTICIPANT:I = 0x8000

.field public static final ALL:I = 0x30ef

.field public static final CALL_TYPE_MODIFIABLE:I = 0x20000

.field public static final DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final GENERIC_CONFERENCE:I = 0x4000

.field public static final HOLD:I = 0x1

.field public static final MANAGE_CONFERENCE:I = 0x80

.field public static final MERGE_CONFERENCE:I = 0x4

.field public static final MUTE:I = 0x40

.field public static final RESPOND_VIA_TEXT:I = 0x20

.field public static final SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final SUPPORTS_VT_LOCAL:I = 0x100

.field public static final SUPPORTS_VT_REMOTE:I = 0x200

.field public static final SUPPORT_HOLD:I = 0x2

.field public static final SWAP_CONFERENCE:I = 0x8

.field public static final UNUSED:I = 0x10

.field public static final VOICE_PRIVACY:I = 0x10000

.field public static final VoLTE:I = 0x400

.field public static final VoWIFI:I = 0x800


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static remove(II)I
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " SUPPORT_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " MERGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " SWAP_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " RESPOND_VIA_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " MUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " MANAGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " SUPPORTS_VT_LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " SUPPORTS_VT_REMOTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " VoLTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, " VoWIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b

    const-string v1, " VOICE_PRIVACY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_c

    const-string v1, " CALL_TYPE_MODIFIABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_d

    const-string v1, " ADD_PARTICIPANT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const/16 v1, 0x4000

    invoke-static {p0, v1}, Landroid/telecom/PhoneCapabilities;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, " GENERIC_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
