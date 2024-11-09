/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
image_alpha = 1


#region VolumeSnd
global.volumeGeneral = 1
global.volumeSndFx = 1
global.volumeSndMsc = 1
#endregion 

audio_controller =  new AudioController("volumeSndFx","volumeSndMsc","volumeGeneral")

// exemplo de construtores --
//sfx_coin = new AudioPlaySingle(sndCoin, au_tyoe_sfx);

// msc_theme = new AudioPlayLoop(sndTheme, au_type_music, 2000);
// obj_vSFX.msc_theme.play = true
